.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureBufferLost(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 3

    iget p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "surface"

    invoke-static {p2, p4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {p3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    const-string p4, "surfaceMap.entries"

    invoke-static {p3, p4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    move-object p4, v0

    :goto_0
    check-cast p4, Ljava/util/Map$Entry;

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    :cond_2
    if-eqz v0, :cond_3

    sget-object p2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object p3, v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne p3, p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object p4, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-eq p3, p4, :cond_6

    :cond_4
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->isQcfaEarlierShot()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    :goto_1
    sget-object p4, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f12009d

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v2, 0x4

    iput v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    iput-boolean p3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->captureBufferLost()V

    if-eqz p2, :cond_7

    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p1, :cond_7

    iget p1, p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processCaptureBufferLost(I)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->dumpCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestsCompleted:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestsCompleted:I

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestCount:I

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->isQcfaEarlierShot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSwHwQcfaShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForChanges(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_1
    return-void

    :goto_2
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {p2, v0, p0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "onCaptureFailed, ignoring failure for "

    const-string v0, "onCaptureFailed, removing capture record for "

    const-class v3, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v5, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v5, v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v5, :cond_1

    iget-boolean v6, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v6, :cond_1

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    if-eqz v5, :cond_1

    const-string v0, "ImageCaptureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". SW Jpeg capture with exif jpeg holder"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    goto :goto_1

    :cond_1
    :try_start_2
    const-string p2, "ImageCaptureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Z)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :goto_0
    monitor-exit v3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    sget-object p2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12009d

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v3, 0x4

    iput v3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    iput-boolean v2, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v1, p2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p2, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->captureFailed()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_NV_SLOW_CAPTURE_UI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->isQcfaEarlierShot()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaCompleteSent:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionEarlierTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    :cond_3
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {p1}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SHUTTER_PLAYED"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForPartial(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCaptureSequenceAborted()V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceCompleted()V
    .locals 0

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureStarted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;J)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    invoke-direct {p3, v0, v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->isQcfaEarlierShot()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaCompleteSent:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionEarlierTimeout()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget v0, p2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaCompleteSent:Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->processForStarted(Landroid/hardware/camera2/CaptureRequest;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
