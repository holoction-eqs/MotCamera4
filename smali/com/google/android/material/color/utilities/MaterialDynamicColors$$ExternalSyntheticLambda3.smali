.class public final synthetic Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget p0, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;->$r8$classId:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    const-wide v12, 0x4056800000000000L    # 90.0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_0
    return-object p0

    :pswitch_1
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_1

    move-wide v0, v10

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    new-instance p0, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    sget-object p1, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-direct {p0, p1, v2}, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;I)V

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_2
    return-object p0

    :pswitch_8
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_4

    move-wide v10, v12

    :cond_4
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move-wide v4, v6

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_6

    move-wide v8, v12

    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_4

    :cond_7
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_4
    return-object p0

    :pswitch_f
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_8

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_9

    move-wide v0, v10

    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_14
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    new-instance p0, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_5
    sget-object p1, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-direct {p0, p1, v2}, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;I)V

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_b

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_6

    :cond_b
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_6
    return-object p0

    :pswitch_16
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_c

    goto :goto_7

    :cond_c
    move-wide v4, v6

    :goto_7
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/SchemeContent;)Z

    move-result p0

    if-nez p0, :cond_d

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_e

    move-wide v8, v12

    goto :goto_8

    :cond_d
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer:Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/SchemeContent;)D

    move-result-wide p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v8

    :cond_e
    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_f

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_9

    :cond_f
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_9
    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :goto_a
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    nop

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
