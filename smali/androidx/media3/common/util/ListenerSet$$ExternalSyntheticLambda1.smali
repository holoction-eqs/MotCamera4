.class public final synthetic Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/service/BgJobService;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    iput v0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    iput p4, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->$r8$classId:I

    const-string v1, "this$0"

    const/4 v2, 0x1

    iget v3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iget-object v4, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$holder"

    invoke-static {v4, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3, v2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->moveSelectedPositionIndicator(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;IZ)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/service/BgJobService;

    check-cast v4, Landroid/os/Bundle;

    sget v0, Lcom/motorola/camera/service/BgJobService;->$r8$clinit:I

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x64

    const/4 v1, 0x0

    const-string v2, "applicationContext"

    if-eq v3, v0, :cond_2

    const/16 v0, 0xc8

    if-eq v3, v0, :cond_1

    const/16 v0, 0x12c

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/motorola/camera/service/BgJobService;->cancelSaveImage(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/motorola/camera/service/BgJobService;->saveNormalProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v0, v1}, Lcom/motorola/camera/service/BgJobService;->saveBgProcessImage(Landroid/os/Bundle;Landroid/content/Context;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :goto_0
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mOpenCameraListener:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/device/CameraStateManager;->getCameraOpen$enumunboxing$(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v1}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus$enumunboxing$(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v2}, Lcom/motorola/camera/device/CameraStateManager;->setCloseAfterError(Ljava/lang/String;Z)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "camera:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/service/CameraForegroundServiceManager;->remove(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "OPEN_CAMERA_ERROR"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {p0, v3, v4}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-interface {p0, v3, v4}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    check-cast v4, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v4, v0, p0, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/motorola/camera/device/CameraService;

    check-cast v4, Landroid/util/Pair;

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/MediaSourceList;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0, v0, v1, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V

    return-void

    :pswitch_7
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v4, Landroidx/media3/common/util/ListenerSet$Event;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-boolean v1, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v1, :cond_4

    const/4 v1, -0x1

    if-eq v3, v1, :cond_5

    iget-object v1, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v1, v3}, Landroidx/media3/common/FlagSet$Builder;->add(I)V

    :cond_5
    iput-boolean v2, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    iget-object v0, v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {v4, v0}, Landroidx/media3/common/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    return-void

    :goto_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->HIDE_STATES:Ljava/util/Set;

    const-string v0, "$layoutRecycler"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$layoutAdapter"

    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->disableScroll:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/SnapHelper$2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, v2}, Landroidx/recyclerview/widget/SnapHelper$2;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    iput v3, v1, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    :cond_7
    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent$inflateViewStub$layoutAdapter$1;->setSelectedLayout(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
