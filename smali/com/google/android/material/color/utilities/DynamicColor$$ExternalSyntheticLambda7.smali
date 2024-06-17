.class public final synthetic Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide v1, 0x4056800000000000L    # 90.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget p0, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

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

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v0

    :pswitch_2
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_1
    return-object p0

    :pswitch_4
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v1

    :pswitch_5
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v2

    :pswitch_9
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object v3

    :pswitch_c
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_2
    return-object p0

    :pswitch_e
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_3

    const-wide/high16 p0, 0x4038000000000000L    # 24.0

    goto :goto_3

    :cond_3
    const-wide p0, 0x4058800000000000L    # 98.0

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_4

    :cond_4
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_4
    return-object p0

    :pswitch_11
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_14
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDarker:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright:Lcom/google/android/material/color/utilities/DynamicColor;

    goto :goto_5

    :cond_5
    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim:Lcom/google/android/material/color/utilities/DynamicColor;

    :goto_5
    return-object p0

    :pswitch_17
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_18
    check-cast p1, Ljava/lang/Double;

    return-object p1

    :goto_6
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_b
        :pswitch_14
        :pswitch_13
        :pswitch_8
        :pswitch_12
        :pswitch_11
        :pswitch_4
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_1
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
