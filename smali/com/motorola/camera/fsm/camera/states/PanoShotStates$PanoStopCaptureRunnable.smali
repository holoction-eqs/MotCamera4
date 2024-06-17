.class public final Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;I)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;Ljava/lang/Object;)V
    .locals 0

    .line 3
    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;I)V

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 3
    new-instance p1, Lcom/motorola/camera/panorama/PanoStopCaptureCallable;

    invoke-direct {p1}, Lcom/motorola/camera/panorama/PanoStopCaptureCallable;-><init>()V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    .line 4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 6
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_0
    return-void

    .line 7
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/PreviewSize;

    .line 8
    sget p3, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    .line 9
    sget v0, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    .line 10
    invoke-direct {p1, p3, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    .line 11
    sget-object p3, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 12
    new-instance v0, Lcom/motorola/camera/panorama/PanoCaptureCallable;

    invoke-direct {v0, p1}, Lcom/motorola/camera/panorama/PanoCaptureCallable;-><init>(Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p3, v0}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string p1, "CAPTURING"

    const/4 p3, 0x1

    .line 16
    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/MediaActionSound;->play(I)V

    :cond_1
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "SEQ_ID"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 19
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    .line 20
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoStopCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
