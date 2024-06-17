.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mMasterListener:Ljava/lang/Object;

.field public mSlaveListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mMasterListener:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mSlaveListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    const/4 p3, 0x1

    invoke-direct {p1, p3, p2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;-><init>(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mMasterListener:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->createCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mMasterListener:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    .line 4
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 5
    invoke-static {p3, p1, v0, v1}, Lcom/motorola/camera/device/CameraService;->createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    new-instance p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;-><init>(ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mSlaveListener:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->createCaptureRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p3

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p3

    .line 8
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mSlaveListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$CreateCaptureRequestsListenerExt;

    invoke-static {p3, p1, p0, v1}, Lcom/motorola/camera/device/CameraService;->createCaptureRequests(Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    :cond_4
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/fsm/RequestBuilders;->ALL_PREVIEW_REQUESTS:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->setStreamingRequests(Ljava/util/List;)V

    return-void

    .line 9
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mMasterListener:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CAPTURE_TRIGGER"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-nez p3, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->mSlaveListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 11
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
