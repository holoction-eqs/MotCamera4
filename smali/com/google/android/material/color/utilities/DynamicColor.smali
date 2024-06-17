.class public final Lcom/google/android/material/color/utilities/DynamicColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final background:Ljava/util/function/Function;

.field public final chroma:Ljava/util/function/Function;

.field public final hctCache:Ljava/util/HashMap;

.field public final hue:Ljava/util/function/Function;

.field public final opacity:Ljava/util/function/Function;

.field public final tone:Ljava/util/function/Function;

.field public final toneDeltaConstraint:Ljava/util/function/Function;

.field public final toneMaxContrast:Ljava/util/function/Function;

.field public final toneMinContrast:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hue:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->chroma:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/google/android/material/color/utilities/DynamicColor;->opacity:Ljava/util/function/Function;

    iput-object p5, p0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    iput-object p6, p0, Lcom/google/android/material/color/utilities/DynamicColor;->toneMinContrast:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/google/android/material/color/utilities/DynamicColor;->toneMaxContrast:Ljava/util/function/Function;

    iput-object p8, p0, Lcom/google/android/material/color/utilities/DynamicColor;->toneDeltaConstraint:Ljava/util/function/Function;

    return-void
.end method

.method public static calculateDynamicTone(Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;Ljava/util/function/Function;)D
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-object/from16 v6, p7

    invoke-interface {v5, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_0
    if-nez v2, :cond_1

    return-wide v7

    :cond_1
    iget-object v9, v2, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v9, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/google/android/material/color/utilities/Score;->ratioOfTones(DD)D

    move-result-wide v9

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object/from16 v15, p3

    invoke-interface {v15, v13, v14}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lcom/google/android/material/color/utilities/Score;->ratioOfTones(DD)D

    move-result-wide v15

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    :goto_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_2
    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-wide/from16 p3, v13

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    :goto_3
    cmpg-double v6, v15, v4

    if-gez v6, :cond_6

    goto :goto_4

    :cond_6
    cmpl-double v4, v15, v17

    if-lez v4, :cond_7

    move-wide/from16 v4, v17

    goto :goto_4

    :cond_7
    move-wide v4, v15

    :goto_4
    cmpl-double v6, v4, v15

    if-nez v6, :cond_8

    move-wide/from16 v13, p3

    goto :goto_5

    :cond_8
    invoke-static {v11, v12, v4, v5}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v13

    :goto_5
    iget-object v2, v2, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    if-eqz v2, :cond_9

    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    :cond_9
    invoke-static {v13, v14}, Lcom/google/android/material/color/utilities/DynamicColor;->enableLightForeground(D)D

    move-result-wide v13

    :cond_a
    if-nez v3, :cond_b

    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    invoke-interface {v3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    :goto_6
    if-nez v5, :cond_c

    goto/16 :goto_a

    :cond_c
    iget-object v2, v5, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;->keepAway:Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double v9, v13, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    cmpl-double v1, v9, v11

    if-ltz v1, :cond_d

    goto/16 :goto_a

    :cond_d
    iget v1, v5, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;->keepAwayPolarity:I

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    if-eqz v1, :cond_16

    const/4 v5, 0x1

    if-eq v1, v5, :cond_13

    const/4 v3, 0x2

    if-eq v1, v3, :cond_e

    goto :goto_a

    :cond_e
    iget-object v1, v2, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v7, v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    move v0, v5

    goto :goto_7

    :cond_f
    move v0, v1

    :goto_7
    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    if-eqz v0, :cond_10

    add-double v6, v13, v2

    cmpg-double v0, v6, v15

    if-gtz v0, :cond_11

    goto :goto_8

    :cond_10
    cmpg-double v0, v13, v2

    if-gez v0, :cond_11

    goto :goto_8

    :cond_11
    move v5, v1

    :goto_8
    if-eqz v5, :cond_12

    add-double/2addr v13, v2

    goto :goto_a

    :cond_12
    sub-double/2addr v13, v2

    goto :goto_a

    :cond_13
    sub-double/2addr v3, v11

    const-wide/16 v0, 0x0

    cmpg-double v2, v3, v0

    if-gez v2, :cond_14

    const-wide/16 v13, 0x0

    goto :goto_a

    :cond_14
    cmpl-double v0, v3, v15

    if-lez v0, :cond_15

    :goto_9
    move-wide v13, v15

    goto :goto_a

    :cond_15
    move-wide v13, v3

    goto :goto_a

    :cond_16
    add-double/2addr v3, v11

    const-wide/16 v0, 0x0

    cmpg-double v2, v3, v0

    if-gez v2, :cond_17

    move-wide v13, v0

    goto :goto_a

    :cond_17
    cmpl-double v0, v3, v15

    if-lez v0, :cond_15

    goto :goto_9

    :goto_a
    return-wide v13
.end method

.method public static contrastingTone(DD)D
    .locals 23

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    const-wide/high16 v9, 0x405d000000000000L    # 116.0

    const-wide v13, 0x3fa47ae147ae147bL    # 0.04

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    if-ltz v4, :cond_4

    cmpl-double v19, v0, v17

    if-lez v19, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v11

    add-double v20, v11, v15

    mul-double v20, v20, p2

    sub-double v5, v20, v15

    cmpg-double v20, v5, v2

    if-ltz v20, :cond_4

    cmpl-double v20, v5, v17

    if-lez v20, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    cmpl-double v22, v20, v11

    if-nez v22, :cond_2

    move-wide v11, v5

    :cond_2
    add-double v20, v20, v15

    add-double/2addr v11, v15

    div-double v20, v20, v11

    sub-double v11, v20, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v20, v20, p2

    if-gez v20, :cond_3

    cmpl-double v11, v11, v13

    if-lez v11, :cond_3

    goto :goto_0

    :cond_3
    div-double v5, v5, v17

    invoke-static {v5, v6}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    sub-double/2addr v5, v7

    const-wide v11, 0x3fd999999999999aL    # 0.4

    add-double/2addr v5, v11

    cmpg-double v11, v5, v2

    if-ltz v11, :cond_4

    cmpl-double v11, v5, v17

    if-lez v11, :cond_5

    :cond_4
    :goto_0
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    :cond_5
    cmpg-double v11, v5, v2

    if-gez v11, :cond_6

    move-wide/from16 v5, v17

    :cond_6
    if-ltz v4, :cond_c

    cmpl-double v4, v0, v17

    if-lez v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v11

    add-double v20, v11, v15

    div-double v20, v20, p2

    sub-double v7, v20, v15

    cmpg-double v4, v7, v2

    if-ltz v4, :cond_c

    cmpl-double v4, v7, v17

    if-lez v4, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    cmpl-double v4, v20, v7

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    move-wide v11, v7

    :goto_1
    add-double v20, v20, v15

    add-double/2addr v11, v15

    div-double v20, v20, v11

    sub-double v11, v20, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v4, v20, p2

    if-gez v4, :cond_a

    cmpl-double v4, v11, v13

    if-lez v4, :cond_a

    goto :goto_2

    :cond_a
    div-double v7, v7, v17

    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4030000000000000L    # 16.0

    sub-double/2addr v7, v9

    const-wide v9, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v7, v9

    cmpg-double v4, v7, v2

    if-ltz v4, :cond_c

    cmpl-double v4, v7, v17

    if-lez v4, :cond_b

    goto :goto_2

    :cond_b
    move-wide v11, v7

    goto :goto_3

    :cond_c
    :goto_2
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    :goto_3
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v5, v6, v0, v1}, Lcom/google/android/material/color/utilities/Score;->ratioOfTones(DD)D

    move-result-wide v7

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/material/color/utilities/Score;->ratioOfTones(DD)D

    move-result-wide v9

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v11, 0x3c

    cmp-long v0, v0, v11

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_d

    move v0, v1

    goto :goto_4

    :cond_d
    move v0, v4

    :goto_4
    if-eqz v0, :cond_11

    sub-double v11, v7, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v11, v13

    if-gez v0, :cond_e

    cmpg-double v0, v7, p2

    if-gez v0, :cond_e

    cmpg-double v0, v9, p2

    if-gez v0, :cond_e

    goto :goto_5

    :cond_e
    move v1, v4

    :goto_5
    cmpl-double v0, v7, p2

    if-gez v0, :cond_10

    cmpl-double v0, v7, v9

    if-gez v0, :cond_10

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    return-wide v2

    :cond_10
    :goto_6
    return-wide v5

    :cond_11
    cmpl-double v0, v9, p2

    if-gez v0, :cond_12

    cmpl-double v0, v9, v7

    if-ltz v0, :cond_13

    :cond_12
    move-wide v5, v2

    :cond_13
    return-wide v5
.end method

.method public static enableLightForeground(D)D
    .locals 7

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    const-wide/16 v5, 0x31

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    const-wide p0, 0x4048800000000000L    # 49.0

    :cond_2
    return-wide p0
.end method

.method public static fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10

    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;I)V

    new-instance v2, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;I)V

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;

    invoke-direct {v6, p1, p2, p3, v0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;I)V

    new-instance v7, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;

    invoke-direct {v7, p1, p2, p3, v3}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;I)V

    move-object v0, v9

    move-object v3, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v9
.end method


# virtual methods
.method public final getTone(Lcom/google/android/material/color/utilities/SchemeContent;)D
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-wide v5, v1, Lcom/google/android/material/color/utilities/SchemeContent;->contrastLevel:D

    const-wide/16 v7, 0x0

    cmpg-double v9, v5, v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-gez v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v11

    :goto_0
    cmpl-double v5, v5, v7

    iget-object v6, v0, Lcom/google/android/material/color/utilities/DynamicColor;->toneMinContrast:Ljava/util/function/Function;

    iget-object v7, v0, Lcom/google/android/material/color/utilities/DynamicColor;->toneMaxContrast:Ljava/util/function/Function;

    if-eqz v5, :cond_2

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    if-eqz v9, :cond_1

    invoke-interface {v6, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double/2addr v12, v3

    iget-wide v14, v1, Lcom/google/android/material/color/utilities/SchemeContent;->contrastLevel:D

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    add-double/2addr v3, v14

    :cond_2
    iget-object v5, v0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v5, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_2
    if-eqz v5, :cond_8

    iget-object v8, v5, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    if-eqz v8, :cond_4

    invoke-interface {v8, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    move v8, v10

    goto :goto_3

    :cond_4
    move v8, v11

    :goto_3
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v2, v5, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/google/android/material/color/utilities/Score;->ratioOfTones(DD)D

    move-result-wide v12

    if-eqz v9, :cond_5

    invoke-interface {v6, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v2, v5, Lcom/google/android/material/color/utilities/DynamicColor;->toneMinContrast:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v6, v7, v14, v15}, Lcom/google/android/material/color/utilities/Score;->ratioOfTones(DD)D

    move-result-wide v6

    move-wide v14, v12

    if-eqz v8, :cond_9

    move-wide v12, v6

    goto :goto_5

    :cond_5
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v2, v5, Lcom/google/android/material/color/utilities/DynamicColor;->toneMaxContrast:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v6, v7, v14, v15}, Lcom/google/android/material/color/utilities/Score;->ratioOfTones(DD)D

    move-result-wide v6

    if-eqz v8, :cond_6

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    goto :goto_4

    :cond_6
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :goto_4
    if-eqz v8, :cond_7

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v12, v14

    move-wide v14, v6

    goto :goto_5

    :cond_7
    move-wide v12, v14

    const-wide/high16 v14, 0x4035000000000000L    # 21.0

    goto :goto_5

    :cond_8
    const-wide/high16 v14, 0x4035000000000000L    # 21.0

    :cond_9
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_5
    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    new-instance v6, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1, v11}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/color/utilities/SchemeContent;I)V

    new-instance v7, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda3;

    invoke-direct {v7, v3, v4}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda3;-><init>(D)V

    new-instance v4, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda4;

    invoke-direct {v4, v5, v11}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    iget-object v5, v0, Lcom/google/android/material/color/utilities/DynamicColor;->toneDeltaConstraint:Ljava/util/function/Function;

    new-instance v8, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;

    invoke-direct {v8, v11, v12, v13}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;-><init>(ID)V

    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;

    invoke-direct {v9, v10, v14, v15}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;-><init>(ID)V

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v6

    move-object v3, v7

    move-object v6, v8

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;->calculateDynamicTone(Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;Ljava/util/function/Function;)D

    move-result-wide v0

    return-wide v0
.end method
