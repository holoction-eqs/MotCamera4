.class public final Lcom/motorola/camera/scenedetection/scene/PortraitModeScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PORTRAIT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 v1, 0x1

    const v2, 0x7f12002f

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V

    return-void
.end method


# virtual methods
.method public final doAction(Lcom/motorola/camera/EventListener;)V
    .locals 1

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleCameraBokehSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x12

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;ILcom/motorola/camera/scenedetection/scene/Scene$Type;)V

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->Companion:Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/zzo;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Portrait Mode / SF-Bokeh not supported."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_ACTION_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_1
    return-void
.end method
