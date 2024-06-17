.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;->$r8$classId:I

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 2

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;->$r8$classId:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-string v1, "LOCATION"

    packed-switch p0, :pswitch_data_0

    goto :goto_3

    .line 1
    :pswitch_0
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_1

    move p2, p1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    return p1

    .line 4
    :goto_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_3

    move p0, p1

    goto :goto_4

    :cond_3
    move p0, v0

    :goto_4
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z

    move-result p2

    goto :goto_5

    :cond_4
    move p2, v0

    :goto_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p0, :cond_5

    goto :goto_6

    :cond_5
    move p1, v0

    :goto_6
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 8
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
