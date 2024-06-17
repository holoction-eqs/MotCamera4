.class public final synthetic Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget p0, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    const-wide v10, 0x4056800000000000L    # 90.0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_0

    move-wide v10, v12

    :cond_0
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_2

    move-wide v10, v12

    :cond_2
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_3

    move-wide v10, v12

    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_4

    move-wide v6, v8

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_5

    move-wide v10, v12

    :cond_5
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_c
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    new-instance v1, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/4 p0, 0x3

    invoke-direct {v1, p0}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;

    const/4 p0, 0x2

    invoke-direct {v2, v0, p0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/color/utilities/SchemeContent;I)V

    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda8;

    invoke-direct {p0, v3, v0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/SchemeContent;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v5

    invoke-static/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;->calculateDynamicTone(Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;Ljava/util/function/Function;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_e
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    new-instance v1, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/4 p0, 0x4

    invoke-direct {v1, p0}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;

    const/4 p0, 0x1

    invoke-direct {v2, v0, p0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/color/utilities/SchemeContent;I)V

    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;

    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/4 p1, 0x0

    invoke-direct {v7, p1}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v5

    invoke-static/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;->calculateDynamicTone(Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;Ljava/util/function/Function;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_6

    const-wide p0, 0x3fc999999999999aL    # 0.2

    goto :goto_0

    :cond_6
    const-wide p0, 0x3fbeb851eb851eb8L    # 0.12

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_7

    move-wide v0, v4

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    return-object v2

    :pswitch_12
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    return-object v2

    :pswitch_13
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    move-wide v6, v8

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    move-wide v8, v10

    :goto_2
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_a

    const-wide/high16 p0, 0x4018000000000000L    # 6.0

    goto :goto_3

    :cond_a
    const-wide p0, 0x4055c00000000000L    # 87.0

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :goto_4
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    const-wide/high16 v12, 0x4058000000000000L    # 96.0

    :goto_5
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

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
