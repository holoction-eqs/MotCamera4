.class public final Lcom/google/android/material/color/utilities/Cam16;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAM16RGB_TO_XYZ:[[D

.field public static final XYZ_TO_CAM16RGB:[[D


# instance fields
.field public final chroma:D

.field public final hue:D

.field public final j:D


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [D

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    new-array v1, v0, [[D

    new-array v2, v0, [D

    fill-array-data v2, :array_3

    aput-object v2, v1, v3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    new-array v0, v0, [D

    fill-array-data v0, :array_5

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/material/color/utilities/Cam16;->CAM16RGB_TO_XYZ:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    :array_1
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    :array_2
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data

    :array_3
    .array-data 8
        0x3ffdcb079afef467L    # 1.8620678
        -0x400fd1e697792de9L    # -1.0112547
        0x3fc3188d6a8c3ae1L    # 0.14918678
    .end array-data

    :array_4
    .array-data 8
        0x3fd8cd3c1de87346L    # 0.38752654
        0x3fe3e2e5bddf7419L    # 0.62144744
        -0x407d9f0ccb1490dcL    # -0.00897398
    .end array-data

    :array_5
    .array-data 8
        -0x406fc73eee525892L    # -0.0158415
        -0x405e8770215031c7L    # -0.03412294
        0x3ff0cca7787f6d9eL    # 1.0499644
    .end array-data
.end method

.method public constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    iput-wide p3, p0, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    iput-wide p5, p0, Lcom/google/android/material/color/utilities/Cam16;->j:D

    return-void
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/Cam16;
    .locals 13

    sget-object v6, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 p0, p0, 0xff

    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v4

    const-wide v7, 0x3fda63c2e8477c96L    # 0.41233895

    mul-double/2addr v7, v2

    const-wide v9, 0x3fd6e341ae4b2c79L    # 0.35762064

    mul-double/2addr v9, v0

    add-double/2addr v9, v7

    const-wide v7, 0x3fc71af7273e5d5eL    # 0.18051042

    mul-double/2addr v7, v4

    add-double/2addr v7, v9

    const-wide v9, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v9, v2

    const-wide v11, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v11, v0

    add-double/2addr v11, v9

    const-wide v9, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v9, v4

    add-double/2addr v9, v11

    const-wide v11, 0x3f93c8fde0401c25L    # 0.01932141

    mul-double/2addr v2, v11

    const-wide v11, 0x3fbe818525c434ceL    # 0.11916382

    mul-double/2addr v0, v11

    add-double/2addr v0, v2

    const-wide v2, 0x3fee693974c0c730L    # 0.95034478

    mul-double/2addr v4, v2

    add-double/2addr v4, v0

    move-wide v0, v7

    move-wide v2, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->fromXyzInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object p0

    return-object p0
.end method

.method public static fromXyzInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .locals 25

    move-object/from16 v0, p6

    sget-object v1, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-wide v4, v3, v2

    mul-double v4, v4, p0

    const/4 v6, 0x1

    aget-wide v7, v3, v6

    mul-double v7, v7, p2

    add-double/2addr v7, v4

    const/4 v4, 0x2

    aget-wide v9, v3, v4

    mul-double v9, v9, p4

    add-double/2addr v9, v7

    aget-object v3, v1, v6

    aget-wide v7, v3, v2

    mul-double v7, v7, p0

    aget-wide v11, v3, v6

    mul-double v11, v11, p2

    add-double/2addr v11, v7

    aget-wide v7, v3, v4

    mul-double v7, v7, p4

    add-double/2addr v7, v11

    aget-object v1, v1, v4

    aget-wide v11, v1, v2

    mul-double v11, v11, p0

    aget-wide v13, v1, v6

    mul-double v13, v13, p2

    add-double/2addr v13, v11

    aget-wide v11, v1, v4

    mul-double v11, v11, p4

    add-double/2addr v11, v13

    iget-object v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    aget-wide v2, v1, v2

    mul-double/2addr v2, v9

    aget-wide v5, v1, v6

    mul-double/2addr v5, v7

    aget-wide v7, v1, v4

    mul-double/2addr v7, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    mul-double/2addr v9, v11

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v13

    const-wide v13, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    div-double v0, v15, v17

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    div-double v11, v15, v17

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    mul-double/2addr v2, v13

    mul-double/2addr v2, v9

    const-wide v15, 0x403b2147ae147ae1L    # 27.13

    add-double/2addr v9, v15

    div-double/2addr v2, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    mul-double/2addr v4, v13

    mul-double/2addr v4, v0

    add-double/2addr v0, v15

    div-double/2addr v4, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    mul-double/2addr v0, v13

    mul-double/2addr v0, v11

    add-double/2addr v11, v15

    div-double/2addr v0, v11

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    mul-double v8, v2, v6

    const-wide/high16 v10, -0x3fd8000000000000L    # -12.0

    mul-double/2addr v10, v4

    add-double/2addr v10, v8

    add-double/2addr v10, v0

    div-double/2addr v10, v6

    add-double v6, v2, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v12, v0, v8

    sub-double/2addr v6, v12

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    div-double/2addr v6, v12

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double v14, v2, v12

    mul-double/2addr v4, v12

    add-double/2addr v14, v4

    const-wide/high16 v16, 0x4035000000000000L    # 21.0

    mul-double v16, v16, v0

    add-double v16, v16, v14

    div-double v16, v16, v12

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double/2addr v2, v14

    add-double/2addr v2, v4

    add-double/2addr v2, v0

    div-double/2addr v2, v12

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    const-wide v12, 0x4076800000000000L    # 360.0

    if-gez v4, :cond_0

    add-double/2addr v0, v12

    goto :goto_0

    :cond_0
    cmpl-double v4, v0, v12

    if-ltz v4, :cond_1

    sub-double/2addr v0, v12

    :cond_1
    :goto_0
    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    move-object/from16 v4, p6

    iget-wide v14, v4, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    mul-double/2addr v2, v14

    iget-wide v14, v4, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    div-double/2addr v2, v14

    iget-wide v8, v4, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    iget-wide v12, v4, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    mul-double/2addr v8, v12

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v23, v2, v8

    div-double v2, v23, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    add-double/2addr v14, v8

    const-wide v8, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v5, v19, v8

    if-gez v5, :cond_2

    const-wide v8, 0x4076800000000000L    # 360.0

    add-double v8, v19, v8

    goto :goto_1

    :cond_2
    move-wide/from16 v8, v19

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    add-double v8, v8, v21

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v21, 0x400e666666666666L    # 3.8

    add-double v8, v8, v21

    const-wide/high16 v21, 0x3fd0000000000000L    # 0.25

    mul-double v8, v8, v21

    const-wide v21, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double v8, v8, v21

    move-wide/from16 p0, v0

    iget-wide v0, v4, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    mul-double/2addr v8, v0

    iget-wide v0, v4, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    mul-double/2addr v8, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    const-wide v5, 0x3fd3851eb851eb85L    # 0.305

    add-double v16, v16, v5

    div-double v0, v0, v16

    const-wide v5, 0x3fd28f5c28f5c28fL    # 0.29

    iget-wide v7, v4, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v7, v5

    const-wide v5, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v21, v2, v0

    iget-wide v2, v4, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    mul-double v2, v2, v21

    mul-double/2addr v0, v12

    div-double/2addr v0, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    const-wide v0, 0x3f9758e219652bd4L    # 0.0228

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    new-instance v0, Lcom/google/android/material/color/utilities/Cam16;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Lcom/google/android/material/color/utilities/Cam16;-><init>(DDD)V

    return-object v0
.end method
