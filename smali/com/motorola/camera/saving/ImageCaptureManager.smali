.class public final Lcom/motorola/camera/saving/ImageCaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mLastCaptureTimestamp:J

.field public static mMaxConcurrentCapturesSystemProp:I

.field public static mMaxFallBackCapturesSystemProp:I


# instance fields
.field public final mCaptureHolderMap:Ljava/util/LinkedHashMap;

.field public final mCaptureListeners:Ljava/util/WeakHashMap;

.field public final mCaptureRecordMap:Ljava/util/LinkedHashMap;

.field public final mHandler:Landroid/os/Handler;

.field public mImageReceivedListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

.field public mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

.field public mIsSaveQueueFull:Z

.field public mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

.field public final mPendingUriMediaData:Ljava/util/Map;

.field public mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

.field public mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

.field public final mReprocWriterMap:Ljava/util/HashMap;

.field public mSwJpegImageReceivedListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

.field public final mUnprocessedImages:Ljava/util/HashMap;

.field public final mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

.field public final mZslResultMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;


# direct methods
.method public static -$$Nest$smonImage(Ljava/lang/String;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 12

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    sget-boolean v4, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_JPEG_REQUEST:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_APP_BG_JOB_PREPARE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureSeqId(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v10, v9, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    invoke-static {v10, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v10, v10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-eq v10, v4, :cond_3

    iget-wide v10, v9, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    cmp-long v10, v10, v2

    if-nez v10, :cond_2

    :cond_3
    iget-object v10, v9, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v10, :cond_2

    move-object v7, v9

    :cond_4
    if-eqz v7, :cond_1

    :cond_5
    if-eqz v7, :cond_7

    invoke-static {v7, p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    const-class p0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean v2, v7, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-eqz v2, :cond_6

    iget-object p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mSwJpegImageReceivedListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_6

    iget-object v2, v7, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->onSwJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_7
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_8

    new-instance p0, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_8
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;

    sget p1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$VideoSnapshotCaptureRequestRunnable;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/motorola/camera/saving/ImageCaptureManager;->setImageReceivedListener(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_9
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/saving/ImageCaptureManager$1;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    new-instance v0, Lcom/motorola/camera/saving/ImageCaptureManager$1;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/motorola/camera/saving/ImageCaptureManager$1;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslResultMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iput-boolean v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mSwJpegImageReceivedListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    iput-object v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ImageCaptureManager"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    const-string p0, "com.motorola.camera.max_concurrent_captures"

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->getInt(ILjava/lang/String;)I

    move-result p0

    sput p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxConcurrentCapturesSystemProp:I

    const-string p0, "com.motorola.camera.max_fall_back_captures"

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->getInt(ILjava/lang/String;)I

    move-result p0

    sput p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMaxFallBackCapturesSystemProp:I

    return-void
.end method

.method public static declared-synchronized addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mLastCaptureTimestamp:J

    :cond_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    :cond_1
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static canSaveSingleShot(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)Z
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    div-int/2addr v0, v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->captureRecordSize()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2, p0}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized captureRecordSize()I
    .locals 2

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    .locals 7

    const-string v0, "No CaptureHolder found in map for "

    const-string v1, "checkForProcessing -> no record matching "

    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    :try_start_3
    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    iget-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v3, :cond_4

    iput-object p0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegMakerNote:[B

    iput-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegAppX:[B

    iput-object v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    iput-boolean v4, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/motorola/camera/saving/SoftJpegCaptureHolder;->wrap(Lcom/motorola/camera/saving/CaptureHolder;)Lcom/motorola/camera/saving/SoftJpegCaptureHolder;

    move-result-object v0

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegMakerNote:[B

    iput-object p0, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegAppX:[B

    iput-object p0, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void

    :cond_6
    :goto_0
    :try_start_4
    sget-object v3, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-ne v3, v5, :cond_8

    new-instance v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    sget-object v5, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean v5, v5, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    xor-int/2addr v5, v4

    if-eqz v5, :cond_7

    iget v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    add-int/2addr v5, v4

    iput v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    goto :goto_1

    :cond_7
    iput-boolean v4, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    :goto_1
    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v5, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    invoke-static {v4, v5}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->addCaptureRecord(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    goto :goto_2

    :cond_8
    move-object v3, v1

    :goto_2
    sget-object v4, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v5, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_c

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    if-eqz v4, :cond_9

    new-instance v5, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v6, 0x1a

    invoke-direct {v5, v6, v1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda0;

    iget-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda0;->onJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    goto :goto_3

    :cond_a
    iget-object p0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_b

    invoke-static {v3, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    monitor-exit v2

    return-void

    :cond_c
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    const-string v0, "ImageCaptureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v1}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_4

    :cond_d
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static checkSaveQueueIsFull(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/motorola/camera/saving/SaveImageService;->canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)Z

    move-result p0

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-boolean v1, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    :goto_0
    sget-object p0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized clearZslCaptureMap()V
    .locals 4

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v3}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCaptureHolderForSeqId(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/saving/CaptureHolder;
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v4, v3, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v4, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    monitor-exit v0

    return-object v3

    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 4

    const-string v0, "ImageCaptureRecord not found for "

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized getCaptureSeqId(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 6

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifSequence:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifSequence:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v1, v1, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getLuxStdForCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to add extra metadata for mcf capture result, exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageCaptureManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getSequenceListForRoot(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Ljava/util/ArrayList;
    .locals 6

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget v5, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isFallBackAllowed()Z
    .locals 3

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFallBackISOThreshold:[F

    invoke-static {v1}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v1

    aget v1, v2, v1

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->isFallBackScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/IqConfigManager;->mLastIso:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 8

    const-string v0, "No CaptureHolders for "

    const-string v1, "No capture record found for timestamp:"

    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string p0, "ImageCaptureManager"

    const-string p1, "CaptureRequest tag is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    return v5

    :cond_0
    :try_start_1
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_1

    const-string p0, "ImageCaptureManager"

    const-string p1, "CaptureResult timestamp is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    return v5

    :cond_1
    const/4 v7, 0x1

    :try_start_2
    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v6, :cond_3

    iget-boolean v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    if-eqz v6, :cond_3

    iget-boolean v0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/saving/CaptureHolder;

    iput-object p2, v0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHoldersLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p0, p1, p2, v4, v7}, Lcom/motorola/camera/saving/ImageCaptureManager;->sendMcfOnCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Z)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    return v7

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_3
    iget-object p0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    const-string p0, "ImageCaptureManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v2

    return v5

    :cond_4
    :try_start_7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_5

    monitor-exit v2

    return v7

    :cond_5
    :try_start_8
    iget-boolean p1, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    xor-int/2addr p1, v7

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeTooLong()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->onCaptureCompleted()V

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v0, p1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v0, :cond_9

    iput-object p2, p1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_b

    const-string p0, "ImageCaptureManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No CaptureHolder matching seqId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v2

    return v5

    :cond_b
    :try_start_9
    iget-object p0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz p0, :cond_c

    iput-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mLongPressed:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->checkComplete$1()V

    :cond_c
    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v2

    return v7

    :catch_0
    :try_start_a
    const-string p0, "ImageCaptureManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit v2

    return v7

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static declared-synchronized onCaptureStarted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;J)Z
    .locals 10

    const-string v0, "No capture holders for "

    const-string v1, "No capture record found for timestamp:"

    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string p0, "ImageCaptureManager"

    const-string p1, "CaptureRequest tag is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    return v5

    :cond_0
    :try_start_1
    sget-object v6, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_NV_SLOW_CAPTURE_UI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    if-nez v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-eqz v6, :cond_3

    invoke-static {p1, p2, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v6, :cond_4

    iget-boolean v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v6, :cond_4

    monitor-exit v2

    return v7

    :cond_4
    :try_start_4
    iget-boolean v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifSequence:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v9, v9, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v6, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_6

    const-string p0, "ImageCaptureManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    return v5

    :cond_6
    :try_start_5
    iget-boolean v0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    xor-int/2addr v0, v7

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->onCaptureStarted()V

    :cond_7
    new-instance v0, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-direct {v0}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object p1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p0, v0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iput-wide p2, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    iget-object p0, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p0, v0, Lcom/motorola/camera/saving/CaptureHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-boolean p0, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz p0, :cond_8

    iput-boolean v7, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    :cond_8
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-static {v0, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    const-class p0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-boolean p1, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    if-eqz p1, :cond_9

    iget-object p1, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mSwJpegImageReceivedListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_9

    iget-object p2, v0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->onSwJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    :try_start_7
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_a
    :goto_2
    monitor-exit v2

    return v7

    :catch_0
    :try_start_8
    const-string p0, "ImageCaptureManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v2

    return v7

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static declared-synchronized onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    new-instance v2, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-direct {v2}, Lcom/motorola/camera/saving/CaptureHolder;-><init>()V

    iput-object p0, v2, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object p0, p0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslResultMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p0, v2, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    :cond_0
    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mZslCaptureMap:Lcom/motorola/camera/saving/ImageCaptureManager$1;

    iget-wide v3, v2, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static processCapture(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "REVIEW_REQUIRED"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v2, "REVIEW_ACCEPT"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v3, "REVIEW_ACCEPT"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    iget-boolean v7, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v7, :cond_0

    invoke-virtual {v3, v6}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData(Z)Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v5

    :goto_0
    iput-boolean v6, v3, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto/16 :goto_6

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_9

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isDepthCaptureInstance()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v3, :cond_2

    sget-object v7, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/mcf/McfDepthRender;

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v5

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v10, v9, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v10, v10, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/McfDepthRender;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v11

    iget v11, v11, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceTag:I

    if-ne v10, v11, :cond_3

    move-object v8, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v9}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    move-result v11

    new-array v11, v11, [B

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    iget-object v11, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    sget-object v12, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iput-boolean v6, v9, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v7, v8, Lcom/motorola/camera/saving/CaptureHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne v7, p1, :cond_5

    iput-boolean v6, v8, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_4

    :cond_6
    move-object v8, v5

    :cond_7
    :goto_4
    if-nez v8, :cond_8

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v7, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/saving/CaptureHolder;

    iput-boolean v6, v7, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    goto :goto_5

    :cond_8
    move-object v3, v8

    :goto_5
    move-object v7, v5

    goto :goto_6

    :cond_9
    move-object v3, v5

    move-object v7, v3

    :goto_6
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/analytics/AnalyticsHelper;->KPI_LIST:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v3, :cond_a

    goto :goto_7

    :cond_a
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v9}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_c

    iget-object v9, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v10, v3

    const-string v3, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v9, v3, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_7

    :cond_b
    move-object v8, v5

    :cond_c
    :goto_7
    iget-boolean v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v3, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    iget-object v8, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {v3, v8, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v8

    :cond_d
    if-nez v8, :cond_e

    iget-boolean v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v3, :cond_e

    if-nez v7, :cond_e

    return-void

    :cond_e
    iget-boolean v3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-eqz v3, :cond_13

    if-nez v8, :cond_10

    if-eqz v7, :cond_f

    goto :goto_8

    :cond_f
    const-string p1, "ImageCaptureManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BG-Process Job is cancelled.Both Data and raw data are empty for sequence ID ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Capture Record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p1}, Lcom/motorola/camera/jms/BgJobManager;->cancelJob(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    invoke-static {p0, v4}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Z)V

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v1, 0x7f12009d

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v6, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v0, p0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void

    :cond_10
    move-object v7, v8

    :goto_8
    iput-boolean v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    iput-boolean v6, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v0, p0, p1, v7}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_12

    iget-object p1, p1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v1, "ERROR_CASE"

    invoke-virtual {p1, v1}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {p0, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_9

    :cond_11
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    return-void

    :cond_12
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->startBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    goto/16 :goto_12

    :cond_13
    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v0, :cond_14

    invoke-static {p0, p1, v7}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    :cond_14
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    if-nez v0, :cond_15

    move v0, v6

    goto :goto_a

    :cond_15
    move v0, v4

    :goto_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRawOnly()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p0, p1, v8}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    :cond_16
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    move v1, v6

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/CaptureHolder;

    if-eqz v1, :cond_17

    iget-boolean v1, v2, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    if-eqz v1, :cond_17

    goto :goto_b

    :cond_17
    move v1, v4

    goto :goto_c

    :cond_18
    if-eqz v1, :cond_26

    if-nez v0, :cond_26

    goto/16 :goto_10

    :cond_19
    if-eqz v2, :cond_22

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance p1, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;

    invoke-direct {p1}, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;-><init>()V

    iput-boolean v6, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {v0, p0, v1, v8}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const/4 v2, -0x1

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, v0

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_1d

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v2, :cond_1d

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v7, v2, :cond_1a

    goto :goto_e

    :cond_1a
    int-to-double v8, v3

    int-to-double v10, v7

    mul-double/2addr v8, v10

    const v3, 0xc800

    int-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v3, v7

    const/16 v7, 0x8

    if-gt v3, v7, :cond_1b

    :goto_d
    if-ge v6, v3, :cond_1c

    shl-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 v3, v3, 0x7

    div-int/2addr v3, v7

    mul-int/lit8 v6, v3, 0x8

    :cond_1c
    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v3, v0

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    const-string v1, "MotoCameraUtil"

    const-string v3, "Got oom exception "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_e
    if-eqz v5, :cond_1f

    sget-object v0, Lcom/motorola/camera/settings/CaptureIntent;->INTENT_INLINE:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/motorola/camera/settings/CaptureIntent;->INTENT_INLINE:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mIntent:Landroid/content/Intent;

    goto :goto_f

    :cond_1e
    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_1f
    :goto_f
    iput v2, p1, Lcom/motorola/camera/settings/CaptureIntent$ReturnResult;->mResult:I

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSetResultListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewResultRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ACTIVITY_RESULT"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_10

    :cond_20
    invoke-static {p0, p1, v8}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-eqz v0, :cond_21

    invoke-static {p0, p1, v7}, Lcom/motorola/camera/saving/ImageCaptureManager;->saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    :cond_21
    :goto_10
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    goto/16 :goto_12

    :cond_22
    if-eqz v1, :cond_23

    new-instance p1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-direct {p1, p0, v0, v8}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->processExif()V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->logPostCapture(Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {p1}, Lcom/motorola/camera/saving/ImageCaptureManager;->removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {p0, v4}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Z)V

    goto/16 :goto_12

    :cond_23
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;

    if-eqz p1, :cond_26

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    monitor-enter p1

    :try_start_2
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/motorola/camera/Util;->undoCorrectOrientationRelativeToSensor(IIIZ)I

    move-result p0

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_24

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    :cond_24
    invoke-virtual {v8}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/high16 v2, 0x3e800000    # 0.25f

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v0}, Lcom/motorola/camera/Util;->loadThumbnail(ILjava/nio/ByteBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_25

    const-string p0, "PostCaptureReview"

    const-string v0, "Unable to obtain post capture frame from JPEG data"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_25
    neg-int v1, p0

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iput v3, p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    invoke-virtual {v8}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->loadWatermarkBitmap(ILjava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_11
    monitor-exit p1

    goto :goto_12

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_26
    :goto_12
    return-void
.end method

.method public static declared-synchronized processOnImage(Lcom/motorola/camera/saving/CaptureHolder;Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V
    .locals 5

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v2, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v4

    if-ne v2, v4, :cond_2

    iput-boolean v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->checkComplete$1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v4, 0x100

    if-ne v2, v4, :cond_4

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_1

    :cond_3
    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->mIsDragging:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;->checkComplete$1()V

    :cond_4
    :goto_1
    iget-object v1, p1, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    goto :goto_2

    :cond_5
    iput-object p1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    :goto_2
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkForProcessing(Lcom/motorola/camera/saving/CaptureHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V
    .locals 2

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    iput-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    iput-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    :cond_2
    return-void
.end method

.method public static declared-synchronized removeCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
    .locals 5

    const-string v0, "ImageCaptureRecord mCaptureRecordMap not found for "

    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v4}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v3

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCaptureRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCaptureHolderMap not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static requestPostView(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 6

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    :cond_0
    move-wide v4, p1

    new-instance p1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget v2, p2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceType:I

    iget v3, p2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mInstanceId:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    shl-int/lit8 v1, p0, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/mcf/McfParameters;->requestPostView(IIIJ)V

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf;->setEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :cond_2
    return-void

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No capture record found for timestamp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageCaptureManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveImage(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    new-instance v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/mcf/Mcf$ShotSlot;Lcom/motorola/camera/saving/ImageDataHolder;)V

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-boolean v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    invoke-virtual {v4}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData()Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-direct {v5, v6, v7, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :try_start_0
    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Lcom/motorola/camera/saving/ImageDataHolder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v6, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v5, v5, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteByteArray([B)V

    :cond_2
    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v5, v5, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setApp6ByteArray([B)V

    :cond_3
    iget v5, p2, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    if-lez v5, :cond_4

    iget v6, p2, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    if-lez v6, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget p2, p2, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v6, "ImageWidth"

    invoke-virtual {v4, v6, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ImageLength"

    invoke-virtual {v4, v6, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PixelXDimension"

    invoke-virtual {v4, v6, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v4, "ImageCaptureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to add sw jpeg exif data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    :cond_6
    iget-object p2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    if-eqz p2, :cond_11

    if-nez p1, :cond_11

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    const-string p1, "Skip to generate motion photo, instance type is:"

    monitor-enter p2

    :try_start_1
    iget-object v0, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v0, :cond_f

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-nez v4, :cond_7

    goto/16 :goto_5

    :cond_7
    iget v4, v4, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object v5, p2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->LOADED:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionPhotoEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    iget-object v5, p2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_VIDEO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p2, v4}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->motionPhotosNotEnabledForZoomValue(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v5, v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v5

    if-eqz v5, :cond_b

    goto/16 :goto_6

    :cond_b
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrSupportedForCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isNormal()Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isBaseFrameStack()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->isNormal()Z

    move-result v6

    if-nez v6, :cond_d

    :goto_3
    move v3, v2

    :cond_d
    if-eqz v3, :cond_e

    const-string v3, "MotionPhotosComponent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", file name is:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p1}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isMfnrSupported:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_JPEG"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_4

    :cond_e
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_JPEG"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {p2, v4}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->generateMotionPhoto(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    move v3, v2

    goto :goto_7

    :cond_f
    :goto_5
    :try_start_2
    const-string p1, "MotionPhotosComponent"

    const-string v0, "Unexpected image without seqId"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_10
    :goto_6
    monitor-exit p2

    goto :goto_7

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_11
    :goto_7
    if-nez v3, :cond_12

    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    xor-int/2addr p1, v2

    if-eqz p1, :cond_12

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    if-nez p0, :cond_12

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    :cond_12
    return-void
.end method

.method public static sendMcfOnCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Z)V
    .locals 7

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/mcf/Mcf;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Z)V

    move-object v0, v6

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getExtraMetaForMcf(Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, p0

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/mcf/Mcf;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Z)V

    return-void
.end method

.method public static declared-synchronized setImageReceivedListener(Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReceivedListener:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setupReprocSurfaceWriter(Landroid/view/Surface;Lcom/motorola/camera/settings/CameraType;Z)V
    .locals 12

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    new-instance v1, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    invoke-direct {v1}, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;-><init>()V

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move p1, v5

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalDepthMode()Z

    move-result v9

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result p2

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v4, :cond_3

    if-eqz v7, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v10, v11

    goto :goto_0

    :cond_2
    move v10, v6

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    if-eqz v9, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_4
    move v10, v5

    :goto_0
    invoke-static {v6, p1, v10}, Lcom/motorola/camera/JsonConfig;->getBufferCnt(ILcom/motorola/camera/settings/CameraType;I)I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x7

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    iget-object v4, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    if-eqz p2, :cond_7

    iget-object v4, p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/media/ImageWriter;->close()V

    const/4 v4, 0x0

    iput-object v4, p2, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    :cond_7
    :goto_2
    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p0

    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    new-instance p1, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda2;-><init>()V

    iget-object p2, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsOpened()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->openReprocess(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->openReprocess(Ljava/lang/String;)V

    :cond_9
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static startBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 10

    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v0, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mMotionPhotosDivert:Lcom/motorola/camera/mediacodec/MotionPhotosJpegDivert;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v2, v2, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMotionPhotosJobs:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->WAIT_MOTION_VIDEO:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    new-instance v3, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0, p1}, Lcom/motorola/camera/saving/ImageCaptureManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/CameraKpi;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    iget-object v4, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v4, v4, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_1
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_VIDEO_START_TIMESTAMP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mSavedMap:Ljava/util/Map;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget v8, v8, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mJobId:I

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mMotionPhotosJobs:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->addMotionVideoToMedia(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mVideoListeners:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-nez v0, :cond_3

    const-string v0, "ImageCaptureManager"

    const-string v1, "Missing motion photos video file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p0, p1}, Lcom/motorola/camera/jms/BgJobManager;->processBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_4
    invoke-static {p0, p1}, Lcom/motorola/camera/jms/BgJobManager;->processBackgroundJob(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    :goto_2
    return-void
.end method
