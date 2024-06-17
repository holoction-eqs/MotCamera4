.class public final Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/GetCharacteristicsListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->clearSessionSettings(ZZ)V

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristics(Ljava/util/Map;Landroid/graphics/Point;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->processCharacteristicsStage2()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isAnyCameraFacingAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->GET_CHARACTERISTICS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NO_CAMERAS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    const-string v3, "NO_CAMERAS_ERROR"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {p1, v0, v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/GetCharacteristicsRunnable;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
