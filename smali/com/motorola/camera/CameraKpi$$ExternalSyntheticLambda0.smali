.class public final synthetic Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;->$r8$classId:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$r8$lambda$hhaMHA6D6eRl-8IK2av3ohyw7Bc(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->$r8$lambda$AfMU7Q-92FVXJNMKWGojcbIlWKk(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/motorola/camera/settings/SettingsManager$Key;

    sget p0, Lcom/motorola/camera/fragments/SettingsManagerFragment;->$r8$clinit:I

    iget-object p0, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->isDark:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p1, Lcom/google/android/material/color/utilities/SchemeContent;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    sget-object p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background:Lcom/google/android/material/color/utilities/DynamicColor;

    const-wide/high16 p0, 0x4054000000000000L    # 80.0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/motorola/camera/CameraKpi$KPI;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
