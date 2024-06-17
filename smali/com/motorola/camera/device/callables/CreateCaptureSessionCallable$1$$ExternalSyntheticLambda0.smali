.class public final synthetic Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    iget v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-static {p0, v1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->-$$Nest$mcheckComplete(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->isReprocessable()Z

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v2

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v4, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "CLOSE_AFTER_OPEN"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v9, "CreateCaptureSessionRunnable"

    if-eqz v4, :cond_0

    const-string v0, "session is invalid."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    iget v10, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mSessionMode:I

    if-eq v4, v10, :cond_1

    const-string v0, "mode is invalid."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_MODE_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_4

    :cond_1
    if-eqz v3, :cond_5

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v3, v3, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    if-lez v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v8

    :goto_1
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    :cond_3
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraType(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->setupReprocSurfaceWriter(Landroid/view/Surface;Lcom/motorola/camera/settings/CameraType;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "Error setting up reproc surface writer"

    invoke-static {v9, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v8

    :goto_3
    if-nez v5, :cond_6

    invoke-static {p0, v1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->-$$Nest$mcheckComplete(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    :goto_4
    return-void

    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->onSessionClosed(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
