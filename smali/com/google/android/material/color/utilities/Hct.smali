.class public final Lcom/google/android/material/color/utilities/Hct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public argb:I

.field public chroma:D

.field public hue:D

.field public tone:D


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/color/utilities/Hct;->argb:I

    invoke-static {p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    iput-wide v1, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v0, v0, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    iput-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    invoke-static {p1}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    return-void
.end method

.method public static from(DDD)Lcom/google/android/material/color/utilities/Hct;
    .locals 44

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_1e

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_1e

    const-wide v0, 0x4058fffe5c91d14eL    # 99.9999

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    goto/16 :goto_17

    :cond_0
    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double v4, p0, v0

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_1

    add-double/2addr v4, v0

    :cond_1
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v0

    invoke-static/range {p4 .. p5}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4026000000000000L    # 11.0

    mul-double/2addr v8, v10

    sget-object v2, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    iget-wide v12, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    const-wide v14, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v14, v12

    const-wide v12, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v12, v14, v12

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-double v18, v4, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    const-wide v20, 0x400e666666666666L    # 3.8

    add-double v18, v18, v20

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    mul-double v18, v18, v20

    const-wide v20, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double v18, v18, v20

    iget-wide v10, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    mul-double v18, v18, v10

    iget-wide v10, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    mul-double v18, v18, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    const/16 v22, 0x0

    move/from16 v3, v22

    :goto_0
    sget-object v23, Lcom/google/android/material/color/utilities/HctSolver;->Y_FROM_LINRGB:[D

    const/4 v14, 0x5

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    const/4 v15, 0x1

    move-wide/from16 v26, v4

    if-ge v3, v14, :cond_9

    div-double v4, v8, v24

    cmpl-double v14, p2, v6

    if-eqz v14, :cond_3

    cmpl-double v14, v8, v6

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    div-double v28, p2, v28

    goto :goto_2

    :cond_3
    :goto_1
    move-wide/from16 v28, v6

    :goto_2
    mul-double v6, v28, v12

    move-wide/from16 v28, v12

    const-wide v12, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-wide v12, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    div-double v12, v32, v12

    move-wide/from16 p4, v8

    iget-wide v8, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    div-double/2addr v12, v8

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-wide v8, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    mul-double/2addr v4, v8

    iget-wide v8, v2, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    div-double/2addr v4, v8

    const-wide v8, 0x3fd3851eb851eb85L    # 0.305

    add-double/2addr v8, v4

    const-wide/high16 v12, 0x4037000000000000L    # 23.0

    mul-double/2addr v8, v12

    mul-double/2addr v8, v6

    mul-double v12, v12, v18

    const-wide/high16 v34, 0x4026000000000000L    # 11.0

    mul-double v36, v6, v34

    mul-double v36, v36, v20

    add-double v36, v36, v12

    const-wide/high16 v12, 0x405b000000000000L    # 108.0

    mul-double/2addr v6, v12

    mul-double/2addr v6, v10

    add-double v6, v6, v36

    div-double/2addr v8, v6

    mul-double v6, v8, v20

    mul-double/2addr v8, v10

    const-wide v12, 0x407cc00000000000L    # 460.0

    mul-double/2addr v4, v12

    const-wide v12, 0x407c300000000000L    # 451.0

    mul-double/2addr v12, v6

    add-double/2addr v12, v4

    const-wide/high16 v36, 0x4072000000000000L    # 288.0

    mul-double v36, v36, v8

    add-double v36, v36, v12

    const-wide v12, 0x4095ec0000000000L    # 1403.0

    div-double v36, v36, v12

    const-wide v38, 0x408bd80000000000L    # 891.0

    mul-double v38, v38, v6

    sub-double v38, v4, v38

    const-wide v40, 0x4070500000000000L    # 261.0

    mul-double v40, v40, v8

    sub-double v38, v38, v40

    div-double v38, v38, v12

    const-wide v40, 0x406b800000000000L    # 220.0

    mul-double v6, v6, v40

    sub-double/2addr v4, v6

    const-wide v6, 0x40b89c0000000000L    # 6300.0

    mul-double/2addr v8, v6

    sub-double/2addr v4, v8

    div-double/2addr v4, v12

    invoke-static/range {v36 .. v37}, Lcom/google/android/material/color/utilities/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v6

    invoke-static/range {v38 .. v39}, Lcom/google/android/material/color/utilities/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Lcom/google/android/material/color/utilities/HctSolver;->inverseChromaticAdaptation(D)D

    move-result-wide v4

    const/4 v12, 0x3

    new-array v13, v12, [D

    aput-wide v6, v13, v22

    aput-wide v8, v13, v15

    const/4 v6, 0x2

    aput-wide v4, v13, v6

    sget-object v4, Lcom/google/android/material/color/utilities/HctSolver;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    invoke-static {v13, v4}, Lcom/google/android/material/color/utilities/Score;->matrixMultiply([D[[D)[D

    move-result-object v4

    aget-wide v7, v4, v22

    const-wide/16 v12, 0x0

    cmpg-double v5, v7, v12

    if-ltz v5, :cond_9

    aget-wide v30, v4, v15

    cmpg-double v5, v30, v12

    if-ltz v5, :cond_9

    aget-wide v36, v4, v6

    cmpg-double v5, v36, v12

    if-gez v5, :cond_4

    goto/16 :goto_4

    :cond_4
    aget-wide v38, v23, v22

    aget-wide v40, v23, v15

    aget-wide v42, v23, v6

    mul-double v38, v38, v7

    mul-double v40, v40, v30

    add-double v40, v40, v38

    mul-double v42, v42, v36

    add-double v42, v42, v40

    cmpg-double v5, v42, v12

    if-gtz v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v5, 0x4

    if-eq v3, v5, :cond_7

    sub-double v5, v42, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v12, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v7, v7, v12

    if-gez v7, :cond_6

    goto :goto_3

    :cond_6
    move-wide/from16 v8, p4

    mul-double/2addr v5, v8

    mul-double v42, v42, v16

    div-double v5, v5, v42

    sub-double/2addr v8, v5

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, v26

    move-wide/from16 v12, v28

    move-wide/from16 v14, v32

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    :cond_7
    :goto_3
    aget-wide v2, v4, v22

    const-wide v5, 0x405900a3d70a3d71L    # 100.01

    cmpl-double v7, v2, v5

    if-gtz v7, :cond_9

    aget-wide v7, v4, v15

    cmpl-double v7, v7, v5

    if-gtz v7, :cond_9

    const/4 v7, 0x2

    aget-wide v8, v4, v7

    cmpl-double v5, v8, v5

    if-lez v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v2

    aget-wide v5, v4, v15

    invoke-static {v5, v6}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v3

    aget-wide v4, v4, v7

    invoke-static {v4, v5}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v2, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    and-int/lit16 v3, v4, 0xff

    or-int/2addr v2, v3

    goto :goto_5

    :cond_9
    :goto_4
    move/from16 v2, v22

    :goto_5
    if-eqz v2, :cond_a

    goto/16 :goto_18

    :cond_a
    const/4 v2, 0x3

    new-array v3, v2, [D

    fill-array-data v3, :array_0

    move-object v2, v3

    move v8, v15

    move/from16 v6, v22

    move v7, v6

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    :goto_6
    const/16 v9, 0xc

    if-ge v6, v9, :cond_18

    aget-wide v9, v23, v22

    aget-wide v18, v23, v15

    const/4 v11, 0x2

    aget-wide v20, v23, v11

    rem-int/lit8 v11, v6, 0x4

    if-gt v11, v15, :cond_b

    const-wide/16 v28, 0x0

    goto :goto_7

    :cond_b
    move-wide/from16 v28, v24

    :goto_7
    rem-int/lit8 v11, v6, 0x2

    if-nez v11, :cond_c

    const/4 v11, 0x4

    const-wide/16 v32, 0x0

    goto :goto_8

    :cond_c
    move-wide/from16 v32, v24

    const/4 v11, 0x4

    :goto_8
    if-ge v6, v11, :cond_f

    mul-double v18, v18, v28

    sub-double v18, v0, v18

    mul-double v20, v20, v32

    sub-double v18, v18, v20

    div-double v18, v18, v9

    const-wide/16 v9, 0x0

    cmpg-double v14, v9, v18

    if-gtz v14, :cond_d

    cmpg-double v9, v18, v24

    if-gtz v9, :cond_d

    move v9, v15

    goto :goto_9

    :cond_d
    move/from16 v9, v22

    :goto_9
    if-eqz v9, :cond_e

    const/4 v9, 0x3

    new-array v10, v9, [D

    aput-wide v18, v10, v22

    aput-wide v28, v10, v15

    const/4 v9, 0x2

    aput-wide v32, v10, v9

    goto :goto_d

    :cond_e
    const/4 v11, 0x3

    goto :goto_c

    :cond_f
    const/16 v14, 0x8

    if-ge v6, v14, :cond_11

    mul-double v9, v9, v32

    sub-double v9, v0, v9

    mul-double v20, v20, v28

    sub-double v9, v9, v20

    div-double v9, v9, v18

    const-wide/16 v18, 0x0

    cmpg-double v14, v18, v9

    if-gtz v14, :cond_10

    cmpg-double v14, v9, v24

    if-gtz v14, :cond_10

    move v14, v15

    goto :goto_a

    :cond_10
    move/from16 v14, v22

    :goto_a
    if-eqz v14, :cond_e

    const/4 v14, 0x3

    new-array v11, v14, [D

    aput-wide v32, v11, v22

    aput-wide v9, v11, v15

    const/4 v9, 0x2

    aput-wide v28, v11, v9

    move-object v10, v11

    goto :goto_d

    :cond_11
    mul-double v9, v9, v28

    sub-double v9, v0, v9

    mul-double v18, v18, v32

    sub-double v9, v9, v18

    div-double v9, v9, v20

    const-wide/16 v18, 0x0

    cmpg-double v11, v18, v9

    if-gtz v11, :cond_12

    cmpg-double v11, v9, v24

    if-gtz v11, :cond_12

    move v11, v15

    goto :goto_b

    :cond_12
    move/from16 v11, v22

    :goto_b
    if-eqz v11, :cond_e

    const/4 v11, 0x3

    new-array v14, v11, [D

    aput-wide v28, v14, v22

    aput-wide v32, v14, v15

    const/16 v18, 0x2

    aput-wide v9, v14, v18

    move-object v10, v14

    goto :goto_d

    :goto_c
    new-array v10, v11, [D

    fill-array-data v10, :array_1

    :goto_d
    aget-wide v18, v10, v22

    const-wide/16 v20, 0x0

    cmpg-double v9, v18, v20

    if-gez v9, :cond_13

    goto :goto_f

    :cond_13
    invoke-static {v10}, Lcom/google/android/material/color/utilities/HctSolver;->hueOf([D)D

    move-result-wide v18

    if-nez v7, :cond_14

    move-object v2, v10

    move-object v3, v2

    move v7, v15

    move-wide/from16 v4, v18

    move-wide v12, v4

    goto :goto_f

    :cond_14
    if-nez v8, :cond_15

    move-wide/from16 p0, v12

    move-wide/from16 p2, v18

    move-wide/from16 p4, v4

    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v9

    if-eqz v9, :cond_17

    :cond_15
    move-wide/from16 p0, v12

    move-wide/from16 p2, v26

    move-wide/from16 p4, v18

    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v8

    if-eqz v8, :cond_16

    move-object v2, v10

    move-wide/from16 v4, v18

    goto :goto_e

    :cond_16
    move-object v3, v10

    move-wide/from16 v12, v18

    :goto_e
    move/from16 v8, v22

    :cond_17
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_18
    const/4 v4, 0x2

    new-array v0, v4, [[D

    aput-object v3, v0, v22

    aput-object v2, v0, v15

    invoke-static {v3}, Lcom/google/android/material/color/utilities/HctSolver;->hueOf([D)D

    move-result-wide v1

    aget-object v0, v0, v15

    move/from16 v4, v22

    :goto_10
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1d

    aget-wide v5, v3, v4

    aget-wide v7, v0, v4

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_1c

    cmpg-double v7, v5, v7

    invoke-static {v5, v6}, Lcom/google/android/material/color/utilities/HctSolver;->trueDelinearized(D)D

    move-result-wide v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-gez v7, :cond_19

    sub-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    aget-wide v6, v0, v4

    invoke-static {v6, v7}, Lcom/google/android/material/color/utilities/HctSolver;->trueDelinearized(D)D

    move-result-wide v6

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    :goto_11
    double-to-int v6, v6

    goto :goto_12

    :cond_19
    sub-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    aget-wide v6, v0, v4

    invoke-static {v6, v7}, Lcom/google/android/material/color/utilities/HctSolver;->trueDelinearized(D)D

    move-result-wide v6

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    goto :goto_11

    :goto_12
    move/from16 v7, v22

    :goto_13
    const/16 v8, 0x8

    if-ge v7, v8, :cond_1c

    sub-int v8, v6, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v15, :cond_1a

    goto :goto_15

    :cond_1a
    add-int v8, v5, v6

    int-to-double v8, v8

    div-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    sget-object v9, Lcom/google/android/material/color/utilities/HctSolver;->CRITICAL_PLANES:[D

    aget-wide v9, v9, v8

    aget-wide v11, v3, v4

    aget-wide v13, v0, v4

    sub-double/2addr v9, v11

    sub-double/2addr v13, v11

    div-double/2addr v9, v13

    const/4 v11, 0x3

    new-array v12, v11, [D

    aget-wide v13, v3, v22

    aget-wide v18, v0, v22

    sub-double v18, v18, v13

    mul-double v18, v18, v9

    add-double v18, v18, v13

    aput-wide v18, v12, v22

    aget-wide v13, v3, v15

    aget-wide v18, v0, v15

    sub-double v18, v18, v13

    mul-double v18, v18, v9

    add-double v18, v18, v13

    aput-wide v18, v12, v15

    const/4 v11, 0x2

    aget-wide v13, v3, v11

    aget-wide v18, v0, v11

    sub-double v18, v18, v13

    mul-double v18, v18, v9

    add-double v18, v18, v13

    aput-wide v18, v12, v11

    invoke-static {v12}, Lcom/google/android/material/color/utilities/HctSolver;->hueOf([D)D

    move-result-wide v9

    move-wide/from16 p0, v1

    move-wide/from16 p2, v26

    move-wide/from16 p4, v9

    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/HctSolver;->areInCyclicOrder(DDD)Z

    move-result v11

    if-eqz v11, :cond_1b

    move v6, v8

    move-object v0, v12

    goto :goto_14

    :cond_1b
    move v5, v8

    move-wide v1, v9

    move-object v3, v12

    :goto_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_1c
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :cond_1d
    move v1, v5

    new-array v1, v1, [D

    aget-wide v4, v3, v22

    aget-wide v6, v0, v22

    add-double/2addr v4, v6

    div-double v4, v4, v16

    aput-wide v4, v1, v22

    aget-wide v6, v3, v15

    aget-wide v8, v0, v15

    add-double/2addr v6, v8

    div-double v6, v6, v16

    aput-wide v6, v1, v15

    const/4 v2, 0x2

    aget-wide v6, v3, v2

    aget-wide v8, v0, v2

    add-double/2addr v6, v8

    div-double v6, v6, v16

    aput-wide v6, v1, v2

    invoke-static {v4, v5}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v0

    aget-wide v3, v1, v15

    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v3

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    and-int/lit16 v2, v3, 0xff

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    :goto_16
    or-int v2, v1, v0

    goto :goto_18

    :cond_1e
    :goto_17
    invoke-static/range {p4 .. p5}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    goto :goto_16

    :goto_18
    new-instance v0, Lcom/google/android/material/color/utilities/Hct;

    invoke-direct {v0, v2}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method
