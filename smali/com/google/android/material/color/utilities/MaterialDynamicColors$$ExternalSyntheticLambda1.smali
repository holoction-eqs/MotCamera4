.class public final synthetic Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget p0, p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;->$r8$classId:I

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    const-wide v6, 0x4056800000000000L    # 90.0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_b

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

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/SchemeContent;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v4, v6

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/SchemeContent;)D

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_3

    move-wide v2, v6

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_2
    return-object p0

    :pswitch_5
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_3

    :cond_5
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_3
    return-object p0

    :pswitch_8
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    const-wide/high16 p0, 0x4049000000000000L    # 50.0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceVariant:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move-wide v0, v4

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    move-wide v4, v6

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceInverse:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_8

    const-wide/high16 p0, 0x4034000000000000L    # 20.0

    goto :goto_6

    :cond_8
    const-wide p0, 0x4057c00000000000L    # 95.0

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_7

    :cond_9
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_7
    return-object p0

    :pswitch_14
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_a

    move-wide v2, v6

    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_b

    const-wide/high16 v6, 0x4036000000000000L    # 22.0

    :cond_b
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_c

    const-wide/high16 p0, 0x4031000000000000L    # 17.0

    goto :goto_8

    :cond_c
    const-wide/high16 p0, 0x4057000000000000L    # 92.0

    :goto_8
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_d

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    goto :goto_9

    :cond_d
    const-wide p0, 0x4057800000000000L    # 94.0

    :goto_9
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_e

    const-wide/high16 p0, 0x4018000000000000L    # 6.0

    goto :goto_a

    :cond_e
    const-wide p0, 0x4058800000000000L    # 98.0

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :goto_b
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

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
