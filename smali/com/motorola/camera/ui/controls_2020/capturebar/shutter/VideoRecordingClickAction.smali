.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/VideoRecordingClickAction;
.super Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/ShutterEventAction;
.source "SourceFile"


# virtual methods
.method public final execute(JJJILcom/motorola/camera/EventListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p8, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p8}, Lkotlin/UShort$Companion;->getCaptureEvent(JJJILcom/motorola/camera/EventListener;)Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Landroid/os/Bundle;

    const/4 p5, 0x3

    invoke-direct {p0, p5}, Landroid/os/Bundle;-><init>(I)V

    const-string p5, "ON_DOWN"

    invoke-virtual {p0, p5, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "ON_UP"

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "CAPTURE_TRIGGER"

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    move-object p0, p1

    :goto_1
    invoke-interface {p8, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method
