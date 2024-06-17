.class public final synthetic Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;->$r8$classId:I

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    const/4 v7, 0x1

    const/4 v8, 0x2

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x4054000000000000L    # 80.0

    const-wide/high16 v15, 0x4044000000000000L    # 40.0

    const-wide v17, 0x4056800000000000L    # 90.0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v3, v5

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    new-instance v1, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-direct {v1, v0, v7}, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;I)V

    return-object v1

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_3
    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move-wide v13, v15

    :goto_4
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-static {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/SchemeContent;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_6

    move-wide/from16 v9, v17

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v1, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/SchemeContent;)D

    move-result-wide v0

    invoke-static {v0, v1, v11, v12}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v9

    :cond_6
    :goto_5
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_6

    :cond_7
    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_6
    return-object v0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v3, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    move-wide/from16 v1, v17

    :goto_7
    invoke-static {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/SchemeContent;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_c

    :cond_9
    iget-object v3, v0, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iget-wide v4, v3, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v14, v3, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    iget-boolean v6, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    xor-int/2addr v6, v7

    move-wide v8, v4

    move-wide v10, v14

    move-wide v12, v1

    invoke-static/range {v8 .. v13}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    cmpg-double v10, v8, v14

    if-gez v10, :cond_e

    move-wide v12, v8

    :goto_8
    iget-wide v8, v7, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    cmpg-double v8, v8, v14

    if-gez v8, :cond_e

    if-eqz v6, :cond_a

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto :goto_9

    :cond_a
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_9
    add-double/2addr v1, v8

    move-wide v8, v4

    move-wide v10, v14

    move-wide/from16 v16, v4

    move-wide v4, v12

    move-wide v12, v1

    invoke-static/range {v8 .. v13}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v8

    iget-wide v9, v8, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    cmpl-double v11, v4, v9

    if-lez v11, :cond_b

    goto :goto_a

    :cond_b
    sub-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3fd999999999999aL    # 0.4

    cmpg-double v9, v9, v11

    if-gez v9, :cond_c

    :goto_a
    goto :goto_b

    :cond_c
    iget-wide v9, v8, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    sub-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    iget-wide v11, v7, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    sub-double/2addr v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_d

    move-object v7, v8

    :cond_d
    iget-wide v8, v8, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide/from16 v4, v16

    goto :goto_8

    :cond_e
    :goto_b
    move-wide/from16 v22, v1

    iget-wide v1, v3, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v3, v3, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    invoke-static/range {v18 .. v23}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/SchemeContent;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_c
    return-object v0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v0

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_f

    goto :goto_d

    :cond_f
    move-wide v3, v5

    :goto_d
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceInverse:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_10

    move-wide v13, v15

    :cond_10
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    new-instance v1, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_11

    goto :goto_e

    :cond_11
    move v7, v8

    :goto_e
    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-direct {v1, v0, v7}, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;I)V

    return-object v1

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_f

    :cond_12
    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_f
    return-object v0

    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_13

    goto :goto_10

    :cond_13
    move-wide v13, v15

    :goto_10
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v0

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-static {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/SchemeContent;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_15

    move-wide/from16 v9, v17

    goto :goto_11

    :cond_14
    sget-object v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v1, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/SchemeContent;)D

    move-result-wide v0

    invoke-static {v0, v1, v11, v12}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v9

    :cond_15
    :goto_11
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v0

    :goto_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-static {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/SchemeContent;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-boolean v0, v0, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz v0, :cond_16

    goto :goto_13

    :cond_16
    move-wide/from16 v1, v17

    goto :goto_13

    :cond_17
    iget-object v1, v0, Lcom/google/android/material/color/utilities/SchemeContent;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    iget-wide v6, v1, Lcom/google/android/material/color/utilities/Hct;->tone:D

    iget-object v1, v0, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iget-wide v2, v1, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v4, v1, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/SchemeContent;)D

    move-result-wide v7

    iget-wide v3, v1, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v5, v1, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/Score;->fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    :goto_13
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
