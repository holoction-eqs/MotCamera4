.class public final Lcom/motorola/camera/saving/SaveImageService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

.field public mCaptureQueueListener:Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

.field public final mForegroundProcessingMediaDataMap:Ljava/util/Map;

.field public final mMaxAvailableMemory:J

.field public mMemoryAvailableListener:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

.field public volatile mProcessingHandler:Landroid/os/Handler;

.field public final mProcessingRecords:Ljava/util/Map;

.field public final mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

.field public volatile mServiceHandler:Landroid/os/Handler;

.field public mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    invoke-direct {v0}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mTempTimelapseVideo:Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SaveImageService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/motorola/camera/device/CameraService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "processingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addBgRecord(Lcom/motorola/camera/CameraData;)V
    .locals 30

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SaveImageService"

    const-string v1, "CameraData uri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v15, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    iget v10, v1, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    iget v11, v1, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    iget v12, v1, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    iget-wide v13, v1, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    iget-wide v1, v1, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v8

    iget v8, v8, Lcom/motorola/camera/background/common/TaskId;->priority:I

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v9

    iget-boolean v9, v9, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    move-wide/from16 v16, v1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    move/from16 v18, v8

    const-string v8, "THUMB_PATH"

    invoke-virtual {v2, v8}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v8, "GLOBAL_UUID"

    invoke-virtual {v2, v8}, Landroidx/work/impl/StartStopTokens;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    const-wide/16 v27, -0x1

    move/from16 v19, v9

    move-wide/from16 v8, v27

    move-object v2, v15

    move-object/from16 v29, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v1

    invoke-direct/range {v2 .. v26}, Lcom/motorola/camera/background/provider/BgCaptureRecord;-><init>(JLjava/lang/String;JJIIIJJIZLjava/lang/String;IIIILjava/lang/String;J)V

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0x1d

    move-object/from16 v3, v29

    invoke-direct {v1, v2, v0, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addWatermarkToImage(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;ZZ)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v1

    const-string v2, "SaveImageService"

    if-eqz v1, :cond_0

    const-string v0, "Is RAW data, not support watermark!"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Jpeg data is null, won\'t add watermark!"

    goto :goto_0

    :cond_1
    sget v3, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    const-string v3, ""

    const-string v4, "WatermarkEditorService"

    const-string v5, "Watermark file doesn\'t exist! file name: "

    const-string v6, "Watermark size is unknown! key: "

    const/4 v7, 0x0

    :try_start_0
    iget-object v9, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v9, :cond_2

    :try_start_1
    const-string v10, "front"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    :try_start_2
    const-string v10, "rear"

    :goto_1
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v11}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v11

    invoke-static {v11}, Lcom/motorola/camera/service/WatermarkEditorService;->getLayoutDirection(Z)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/util/Size;

    iget v14, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v15, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v13, v14, v15}, Landroid/util/Size;-><init>(II)V

    invoke-static {v13}, Lcom/motorola/camera/service/WatermarkEditorService;->convertToPortraitSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-static {v12, v14, v15, v10}, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkCache;->generateKey(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v12, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14, v10, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v15, :cond_3

    :try_start_3
    invoke-static {v13, v9}, Lcom/motorola/camera/service/WatermarkEditorService;->generateWatermarkOnDemand(Landroid/util/Size;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkPref()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v3, :cond_4

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_6
    invoke-static {v14}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v10}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/service/WatermarkEditorService;->getWatermarkFileFolder()Ljava/io/File;

    move-result-object v14

    invoke-direct {v10, v14, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v14, :cond_5

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :goto_3
    move-object/from16 v16, v7

    const/4 v8, 0x0

    goto/16 :goto_20

    :goto_4
    move-object/from16 v17, v2

    move-object/from16 v16, v7

    const/4 v1, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1d

    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    :try_start_8
    invoke-static {v6, v3, v10, v5}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkFileToBitmap(IILjava/io/File;F)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_6

    :goto_5
    move-object/from16 v17, v2

    move-object v0, v7

    const/4 v1, 0x0

    const/4 v8, 0x0

    goto/16 :goto_15

    :cond_6
    sget-object v9, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->sLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    iget-object v9, v9, Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager;->watermarkFileCache:Lcom/motorola/camera/service/WatermarkEditorService$WatermarkFileCacheManager$WatermarkFileCache;

    invoke-virtual {v9, v12, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v9, 0x1

    if-eqz p2, :cond_d

    :try_start_a
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0603f4

    invoke-virtual {v10, v12, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    int-to-float v3, v3

    sget v14, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_X:F

    mul-float/2addr v14, v3

    float-to-int v14, v14

    sget v15, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_Y:F

    mul-float/2addr v15, v3

    float-to-int v15, v15

    sget v16, Lcom/motorola/camera/service/WatermarkEditorService;->SCALE_TS_TEXT:F

    mul-float v3, v3, v16

    float-to-int v3, v3

    iget v7, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    const/16 v5, 0x5a

    if-eq v5, v7, :cond_8

    const/16 v5, 0x10e

    if-ne v5, v7, :cond_7

    goto :goto_6

    :cond_7
    iget v5, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    goto :goto_7

    :cond_8
    :goto_6
    iget v5, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :goto_7
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_a

    if-eqz v11, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    sub-int v9, v17, v18

    int-to-float v9, v9

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v8, v6, v9, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_9
    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v8, v6, v2, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_a
    move-object/from16 v17, v2

    :goto_8
    iget-object v2, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-object v9, v1

    iget-wide v0, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {v0, v1}, Lcom/motorola/camera/service/WatermarkEditorService;->getTimestampString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    int-to-float v1, v3

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v7, v0, v6, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v14

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v15

    if-eqz v11, :cond_b

    goto :goto_9

    :cond_b
    move v14, v1

    :goto_9
    int-to-float v1, v14

    int-to-float v2, v2

    invoke-virtual {v8, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v13}, Lcom/motorola/camera/service/WatermarkEditorService;->isStrokeSupport(Landroid/util/Size;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v10, v3}, Lcom/motorola/camera/service/WatermarkEditorService;->getStrokePaint(Landroid/content/res/Resources;I)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c
    move-object v6, v5

    goto :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_17

    :goto_a
    const/4 v12, 0x0

    goto/16 :goto_19

    :goto_b
    const/4 v12, 0x0

    goto/16 :goto_1b

    :cond_d
    move-object v9, v1

    move-object/from16 v17, v2

    const/4 v5, 0x0

    :goto_c
    iget-object v0, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    move-object/from16 v3, p0

    iget v7, v3, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v1, v7

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v2, v3, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMetadata:Lcom/motorola/camera/photometadata/PhotoMetadata;

    iget v7, v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->mThumbnailCompression:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_e

    goto :goto_d

    :cond_e
    const/4 v2, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getThumbnailBytes()[B

    move-result-object v2

    :goto_e
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    array-length v10, v2

    invoke-static {v2, v8, v10, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_15

    iget v7, v3, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v7, :cond_10

    int-to-float v7, v7

    invoke-static {v2, v7}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_10
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    invoke-direct {v8, v13, v13, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v1, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v0

    float-to-int v0, v10

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v12, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v13, 0x0

    invoke-direct {v10, v13, v12, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v11, :cond_11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v10, Landroid/graphics/Rect;->right:I

    :cond_11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v7, v6, v8, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v8, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget v8, v3, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v8, :cond_12

    neg-int v8, v8

    int-to-float v8, v8

    invoke-static {v2, v8}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_12
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v8, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    const/high16 v10, 0x10000

    if-lt v8, v10, :cond_13

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v8, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-ge v7, v10, :cond_14

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_f

    :cond_14
    const/4 v0, 0x0

    :goto_f
    invoke-static {v2}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    :cond_15
    const/4 v1, 0x1

    const-string v0, "The thumbnail image is invalid or null!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_16
    move-object/from16 v3, p0

    const/4 v1, 0x1

    :goto_10
    const/4 v0, 0x0

    :goto_11
    iget v2, v3, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    if-eqz v2, :cond_18

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v8, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v10

    invoke-virtual {v7, v2, v8, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v7, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    const/16 v24, 0x1

    move-object/from16 v18, v6

    move-object/from16 v23, v7

    invoke-static/range {v18 .. v24}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eq v6, v2, :cond_17

    move v6, v1

    goto :goto_12

    :cond_17
    const/4 v6, 0x0

    :goto_12
    move-object v7, v2

    goto :goto_13

    :cond_18
    move-object v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_13
    :try_start_d
    invoke-virtual {v9}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    new-instance v10, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v12, 0x0

    :try_start_e
    invoke-direct {v10, v12, v3, v0}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget v0, v3, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-static {v8, v2, v10, v0, v11}, Lcom/motorola/camera/mcf/MotUtil;->addWatermarkToJpeg([BLjava/lang/Object;Lcom/motorola/camera/mcf/McfMetadataModificationCallable;IZ)[B

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "Watermarked JPEG was not successfully created"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v12

    goto :goto_14

    :cond_19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move v8, v1

    :goto_14
    move-object v0, v7

    move v1, v8

    move-object v7, v5

    move v8, v6

    :goto_15
    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v8, :cond_1a

    move v8, v1

    goto :goto_1e

    :cond_1a
    move v8, v1

    goto :goto_1f

    :catch_2
    move-exception v0

    goto :goto_16

    :catchall_1
    move-exception v0

    move v8, v6

    move-object/from16 v16, v7

    move-object v7, v5

    goto :goto_20

    :catch_3
    move-exception v0

    const/4 v12, 0x0

    :goto_16
    move v1, v6

    move-object/from16 v16, v7

    move-object v7, v5

    goto :goto_1d

    :catchall_2
    move-exception v0

    const/4 v12, 0x0

    goto :goto_1a

    :catch_4
    move-exception v0

    :goto_17
    const/4 v12, 0x0

    goto :goto_1c

    :catchall_3
    move-exception v0

    move-object/from16 v17, v2

    const/4 v12, 0x0

    :goto_18
    :try_start_f
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_19

    :catch_5
    move-exception v0

    goto :goto_1b

    :catchall_5
    move-exception v0

    goto :goto_18

    :catchall_6
    move-exception v0

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_b

    :goto_19
    const/4 v5, 0x0

    :goto_1a
    move-object v7, v5

    move v8, v12

    const/16 v16, 0x0

    goto :goto_20

    :goto_1b
    const/4 v5, 0x0

    :goto_1c
    move-object v7, v5

    move v1, v12

    const/16 v16, 0x0

    :goto_1d
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    move v8, v12

    if-eqz v1, :cond_1b

    move-object/from16 v0, v16

    :goto_1e
    invoke-static {v0}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_1b
    :goto_1f
    if-nez v8, :cond_1c

    const-string v0, "Add watermark failed!"

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return-void

    :catchall_7
    move-exception v0

    move v8, v1

    :goto_20
    invoke-static {v7}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v8, :cond_1d

    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/service/WatermarkEditorService;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_1d
    throw v0
.end method

.method public static canSave(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;)Z
    .locals 8

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mMaxAvailableMemory:J

    iget-object v4, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v5, v4, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->mMemoryUsed:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    sub-long/2addr v2, v5

    int-to-long v4, p0

    int-to-long v6, p1

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    new-instance v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v4, p0, p1, p2, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(IILcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda1;I)V

    iput-object v4, v0, Lcom/motorola/camera/saving/SaveImageService;->mMemoryAvailableListener:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    new-instance p0, Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

    invoke-direct {p0, p1}, Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;-><init>(I)V

    iput-object p0, v0, Lcom/motorola/camera/saving/SaveImageService;->mCaptureQueueListener:Lcom/motorola/camera/saving/SaveImageService$CaptureQueueListener;

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->CAPTURE_QUEUE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_1
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "CAPTURE_TIMESTAMP"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    iget-wide v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz p0, :cond_1

    iget-wide v4, p0, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :cond_1
    :goto_0
    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    cmp-long p0, v4, v2

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_ALWAYS_LOG_SHUTTER_LAG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHUTTER_LAG_O:Lcom/motorola/camera/CameraKpi$KPI;

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v2, v0, v0, v1}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public static commitTotalCaptureTimeKPI(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v1, "ON_UP"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_CAPTURE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, v3, v0, v0, p0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;ZZ)V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "kk/1,mm/1,ss/1"

    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v3, v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/FileDescriptor;)V

    const-string p0, "DateTime"

    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p0, "DateTimeDigitized"

    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DateTimeOriginal"

    iget-wide v1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setLocationAttributes(Landroid/location/Location;)V

    if-eqz p3, :cond_2

    iget-object p0, v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAppData:Ljava/util/Map;

    const/16 p1, -0x1e

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lcom/motorola/camera/photometadata/MarkerMetadata;->MARKER_APP2_DATA:[B

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->addAppByteArray(B[B)V

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "exception when correctExifInfo "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaveImageService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/TotalCaptureResult;Landroid/location/Location;ILjava/lang/String;II)V
    .locals 7

    invoke-static {p5}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p5

    new-instance v6, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v6, p5, p2}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {v6, p3}, Landroid/hardware/camera2/DngCreator;->setLocation(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;

    :cond_0
    invoke-virtual {v6, p4}, Landroid/hardware/camera2/DngCreator;->setOrientation(I)Landroid/hardware/camera2/DngCreator;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, p6, p7}, Landroid/util/Size;-><init>(II)V

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v6}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 23

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    .line 2
    check-cast v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    sget-object v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    const/16 v5, 0xb4

    const/4 v6, 0x0

    const-string v7, "SaveImageService"

    const/4 v8, 0x1

    .line 3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v0, :cond_9

    .line 4
    sget-object v10, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 5
    sget-object v10, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 6
    sget-object v11, Lcom/motorola/camera/AppFeatures$Feature;->DYNAMIC_DEPTH_XMP:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v10, v11}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_9

    const-string v10, "Orientation"

    .line 8
    sget-object v11, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    iget-object v12, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {v12, v11}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/mcf/McfAuxFrameData;

    iget-object v13, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    sget-object v14, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v12, v14}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    goto :goto_1

    :cond_1
    move-object v13, v6

    :goto_1
    invoke-virtual {v11}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v11

    if-eqz v11, :cond_6

    if-eqz v13, :cond_6

    if-nez v12, :cond_2

    goto :goto_3

    :cond_2
    :try_start_0
    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    const/16 v15, 0x5a

    if-eq v0, v15, :cond_5

    if-eq v0, v5, :cond_4

    const/16 v15, 0x10e

    if-eq v0, v15, :cond_3

    move v0, v8

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v15, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v15, v10, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v0

    invoke-virtual {v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v14, v4, v0, v12}, Lcom/motorola/camera/mcf/MotDynamicDepthUtil;->encodeDepthPhoto([B[B[BLcom/motorola/camera/mcf/McfImagingModelAuxData;)[B

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "encodeDynamicDepthPhoto Failed to write exif orientation: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Missing depth photo parameters depthJpeg="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " originalJpeg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " imagingModel="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v0, v6

    :goto_5
    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    const-string v0, "Failed to encode dynamic depth photo, using gdepth instead!"

    .line 9
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_9
    iget-object v4, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    .line 11
    iget-object v0, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 12
    iget-object v10, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-object v11, v10

    check-cast v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    .line 13
    iget-object v12, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mAlternateShotData:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    if-eqz v12, :cond_f

    if-eqz v0, :cond_f

    .line 14
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v13

    iget-boolean v14, v12, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mMandatory:Z

    iget-object v12, v12, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->mName:Ljava/lang/String;

    if-eqz v13, :cond_a

    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Composition:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 15
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 16
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v12, v14, v15}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v13

    if-eqz v13, :cond_b

    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->BestShotType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 17
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 18
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v12, v14, v15}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v13

    if-eqz v13, :cond_c

    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->LowLightAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 19
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 20
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v12, v14, v15}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->ImageStabilizationAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 21
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 22
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v12, v14, v15}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v13

    if-eqz v13, :cond_e

    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->CudAI:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 23
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 24
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v12, v14, v15}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->OriginalType:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 25
    iget-object v13, v13, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 26
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v15, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v0, v13, v12, v14, v15}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :goto_6
    invoke-virtual {v4, v0}, Lcom/motorola/camera/saving/XmpData;->add(Landroidx/work/WorkQuery;)V

    :cond_f
    iget-object v0, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v12, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne v0, v12, :cond_11

    iget-boolean v0, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    if-nez v0, :cond_11

    new-instance v0, Landroidx/work/WorkQuery;

    iget-object v12, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v13, "UUID"

    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v13, v13, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mShotCount:I

    sub-int/2addr v13, v8

    if-nez v13, :cond_10

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_10
    move-object v13, v6

    :goto_7
    invoke-direct {v0, v6, v12, v13, v6}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/saving/XmpData;->add(Landroidx/work/WorkQuery;)V

    :cond_11
    iget-object v0, v10, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v12, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    const/4 v13, 0x2

    if-ne v0, v12, :cond_1a

    .line 27
    invoke-static {v6}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 29
    invoke-static {v6}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    .line 30
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    iget-object v14, v10, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v15, "PANO_IMAGE_HEIGHT"

    invoke-virtual {v14, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v10, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v8, "PANO_IMAGE_WIDTH"

    invoke-virtual {v15, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iget v15, v10, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iget-object v10, v10, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_MAX_OUTPUT_SIZE"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v6

    if-nez v6, :cond_12

    goto/16 :goto_c

    :cond_12
    if-eqz v15, :cond_15

    if-ne v15, v5, :cond_13

    goto :goto_8

    :cond_13
    if-le v8, v0, :cond_14

    goto :goto_9

    :cond_14
    if-le v14, v12, :cond_1a

    goto :goto_a

    :cond_15
    :goto_8
    if-le v8, v12, :cond_16

    :goto_9
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_b

    :cond_16
    if-le v14, v0, :cond_1a

    :goto_a
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_b
    div-int/2addr v0, v13

    mul-int/lit8 v5, v0, 0x2

    sub-int v6, v5, v8

    div-int/2addr v6, v13

    sub-int v10, v0, v14

    div-int/2addr v10, v13

    if-gez v10, :cond_17

    mul-int/lit8 v5, v14, 0x2

    move v0, v14

    const/4 v10, 0x0

    :cond_17
    if-gez v6, :cond_18

    div-int/lit8 v0, v8, 0x2

    move v5, v8

    const/4 v6, 0x0

    :cond_18
    iget-object v12, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    const-string v15, "http://ns.google.com/photos/1.0/panorama/"

    .line 31
    iget-object v13, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v13, :cond_19

    .line 32
    sget-object v13, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    .line 33
    new-instance v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v13}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 34
    iput-object v13, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_19
    iget-object v12, v12, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_1
    const-string v13, "CroppedAreaImageHeightPixels"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v9

    :try_start_2
    move-object v9, v12

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .line 35
    :try_start_3
    invoke-virtual {v9, v15, v13, v14, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v9, "CroppedAreaImageWidthPixels"

    .line 36
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v13, v12

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 37
    invoke-virtual {v13, v15, v9, v8, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v8, "CroppedAreaLeftPixels"

    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v9, v12

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 39
    invoke-virtual {v9, v15, v8, v6, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "CroppedAreaTopPixels"

    .line 40
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v12

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 41
    invoke-virtual {v9, v15, v6, v8, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "FullPanoHeightPixels"

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v8, v12

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 43
    invoke-virtual {v8, v15, v6, v0, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "FullPanoWidthPixels"

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v12

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 45
    invoke-virtual {v6, v15, v0, v5, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "ProjectionType"

    const-string v5, "equirectangular"

    .line 46
    move-object v6, v12

    check-cast v6, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 47
    invoke-virtual {v6, v15, v0, v5, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "UsePanoramaViewer"

    .line 48
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 49
    invoke-virtual {v12, v15, v0, v5, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    :catch_1
    move-object/from16 v17, v2

    goto :goto_d

    :catch_2
    :cond_1a
    :goto_c
    move-object/from16 v17, v2

    move-object/from16 v16, v9

    .line 50
    :catch_3
    :goto_d
    invoke-static {v11}, Lcom/motorola/camera/saving/SaveImageService;->hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    iget-object v2, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    sget-object v5, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHRENDER:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v2, v5}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfDepthRender;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_1e

    new-instance v5, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-direct {v5, v0}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(Lcom/motorola/camera/mcf/McfAuxFrameData;)V

    iget-object v6, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_e

    :cond_1b
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v3, v6

    :goto_e
    iget-boolean v6, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v6, :cond_1c

    new-instance v6, Lcom/adobe/xmp/impl/QName;

    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v3

    const-string v7, "Segmentation"

    invoke-direct {v6, v7, v3}, Lcom/adobe/xmp/impl/QName;-><init>(Ljava/lang/String;[B)V

    goto :goto_f

    :cond_1c
    new-instance v6, Lcom/adobe/xmp/impl/QName;

    invoke-static {v3}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v3

    const/4 v7, 0x0

    .line 51
    invoke-direct {v6, v7, v3}, Lcom/adobe/xmp/impl/QName;-><init>(Ljava/lang/String;[B)V

    goto :goto_f

    :cond_1d
    const/4 v6, 0x0

    .line 52
    :goto_f
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiX()I

    move-result v7

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiY()I

    move-result v8

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiWidth()I

    move-result v9

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getGoodRoiHeight()I

    move-result v0

    invoke-direct {v3, v7, v8, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    goto :goto_10

    :cond_1e
    const-string v0, "DepthMap Aux present, but data is null. Not embedding depth data"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_10
    if-eqz v2, :cond_1f

    new-instance v0, Landroidx/media3/extractor/AacUtil$Config;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointX()I

    move-result v3

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocalPointY()I

    move-result v7

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfDepthRender;->getFocusType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v7, v2}, Landroidx/media3/extractor/AacUtil$Config;-><init>(IILjava/lang/String;)V

    goto :goto_11

    :cond_1f
    const/4 v0, 0x0

    :goto_11
    const-string v2, "Data"

    const-string v3, "image/jpeg"

    const-string v7, "Mime"

    if-eqz v5, :cond_22

    const-string v8, "http://ns.google.com/photos/1.0/depthmap/"

    .line 53
    iget-object v9, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v9, :cond_20

    .line 54
    sget-object v9, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    .line 55
    new-instance v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 56
    iput-object v9, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_20
    iget-object v9, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v9, :cond_21

    sget-object v9, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    .line 57
    new-instance v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v9}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 58
    iput-object v9, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_21
    iget-object v9, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    iget-object v10, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_4
    const-string v12, "Far"

    iget v13, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v9

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v15, 0x0

    .line 59
    invoke-virtual {v14, v8, v12, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v12, "Format"

    const-string v13, "RangeLinear"

    .line 60
    move-object v14, v9

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 61
    invoke-virtual {v14, v8, v12, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 62
    move-object v12, v9

    check-cast v12, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 63
    invoke-virtual {v12, v8, v7, v3, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v12, "Near"

    .line 64
    iget v13, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v9

    check-cast v14, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 65
    invoke-virtual {v14, v8, v12, v13, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 66
    iget-object v12, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    check-cast v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 67
    invoke-virtual {v10, v8, v2, v12, v15}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 68
    iget-object v10, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, Landroid/graphics/Rect;

    if-eqz v12, :cond_22

    const-string v12, "RoiX"

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v13, v9

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 69
    invoke-virtual {v13, v8, v12, v10, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v10, "RoiY"

    .line 70
    iget-object v12, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v9

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 71
    invoke-virtual {v13, v8, v10, v12, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v10, "RoiWidth"

    .line 72
    iget-object v12, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v13, v9

    check-cast v13, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v14, 0x0

    .line 73
    invoke-virtual {v13, v8, v10, v12, v14}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v10, "RoiHeight"

    .line 74
    iget-object v5, v5, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 75
    invoke-virtual {v9, v8, v10, v5, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_22
    if-eqz v6, :cond_25

    const-string v5, "http://ns.google.com/photos/1.0/image/"

    .line 76
    iget-object v8, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_23

    .line 77
    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    .line 78
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 79
    iput-object v8, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_23
    iget-object v8, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_24

    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    .line 80
    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 81
    iput-object v8, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_24
    iget-object v8, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    iget-object v9, v4, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_5
    iget-object v10, v6, Lcom/adobe/xmp/impl/QName;->prefix:Ljava/lang/String;

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    .line 82
    invoke-virtual {v9, v5, v2, v10, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 83
    move-object v2, v8

    check-cast v2, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 84
    invoke-virtual {v2, v5, v7, v3, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 85
    iget-object v2, v6, Lcom/adobe/xmp/impl/QName;->localName:Ljava/lang/String;

    if-eqz v2, :cond_25

    const-string v3, "ItemSemantic"

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 86
    invoke-virtual {v8, v5, v3, v2, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_5
    .catch Lcom/adobe/xmp/XMPException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_25
    if-eqz v0, :cond_27

    const-string v2, "http://ns.motorola.com/camera/1.0/depthfocus/"

    .line 87
    iget-object v3, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v3, :cond_26

    .line 88
    sget-object v3, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    .line 89
    new-instance v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v3}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 90
    iput-object v3, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_26
    iget-object v3, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_6
    const-string v5, "FocalPointX"

    iget v6, v0, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v3

    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v8, 0x0

    .line 91
    invoke-virtual {v7, v2, v5, v6, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v5, "FocalPointY"

    .line 92
    iget v6, v0, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v3

    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 93
    invoke-virtual {v7, v2, v5, v6, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v5, "FocalPointType"

    .line 94
    iget-object v0, v0, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    check-cast v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 95
    invoke-virtual {v3, v2, v5, v0, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_6
    .catch Lcom/adobe/xmp/XMPException; {:try_start_6 .. :try_end_6} :catch_6

    .line 96
    :catch_6
    :cond_27
    new-instance v0, Landroidx/work/WorkQuery;

    iget-boolean v2, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    if-eqz v2, :cond_28

    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    goto :goto_12

    :cond_28
    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 97
    :goto_12
    iget-object v2, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 98
    iget-boolean v3, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v5, v3}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/saving/XmpData;->add(Landroidx/work/WorkQuery;)V

    :cond_29
    move-object/from16 v2, v17

    .line 99
    iget-object v0, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-eqz v0, :cond_2b

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 101
    iget-wide v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideoPresentationOffsetUs:J

    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    .line 102
    iget-object v5, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v5, :cond_2a

    .line 103
    sget-object v5, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    .line 104
    new-instance v5, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v5}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 105
    iput-object v5, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_2a
    iget-object v5, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_7
    const-string v6, "MotionPhoto"

    move-object v7, v5

    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    move-object/from16 v11, v16

    const/4 v8, 0x0

    .line 106
    invoke-virtual {v7, v0, v6, v11, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "MotionPhotoVersion"

    .line 107
    move-object v7, v5

    check-cast v7, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 108
    invoke-virtual {v7, v0, v6, v11, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v6, "MotionPhotoPresentationTimestampUs"

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v3, v5

    check-cast v3, Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 110
    invoke-virtual {v3, v0, v6, v2, v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 111
    invoke-static {v5}, Lcom/motorola/camera/saving/XmpData;->createMotionPhotoItemDirectory(Lcom/adobe/xmp/XMPMeta;)V

    const-string v0, "Container:Directory[%d]/Container:Item"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v6, v3

    invoke-static {v2, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "Primary"

    const-string v20, "image/jpeg"

    const-wide/16 v21, 0x0

    move-object/from16 v17, v5

    invoke-static/range {v17 .. v22}, Lcom/motorola/camera/saving/XmpData;->embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "MotionPhoto"

    const-string v8, "video/mp4"

    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/saving/XmpData;->embedMotionPhotoItem(Lcom/adobe/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_7
    .catch Lcom/adobe/xmp/XMPException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_13

    :catch_7
    move-exception v0

    const-string v2, "XmpData"

    const-string v3, "can\'t embed motion photo oem"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_2b
    :goto_13
    iget-object v0, v4, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_2c

    .line 113
    iget-boolean v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    if-eqz v0, :cond_2c

    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->AutoEnhance:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    .line 114
    iget-object v2, v2, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    .line 115
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v5, v3}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/saving/XmpData;->add(Landroidx/work/WorkQuery;)V

    .line 116
    :cond_2c
    iput-object v4, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mXmpData:Lcom/motorola/camera/saving/XmpData;

    move-object/from16 v1, p1

    invoke-static {v1, v4}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 117
    iget-object v0, p1, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_6

    :cond_1
    const/4 v0, 0x0

    .line 118
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2, p1}, Lcom/motorola/camera/saving/XmpUtil;->writeXmpMeta(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;Lcom/motorola/camera/saving/XmpData;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    move-object p1, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    :goto_2
    move-object p1, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, v0

    :goto_3
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_2
    move-object p1, v0

    :goto_4
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, p1

    :goto_5
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_6
    return-object p0
.end method

.method public static finishVideoFile(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    :try_start_0
    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SaveImageService"

    const-string v3, "finishVideoFile failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v3, 0xf

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    return-void
.end method

.method public static getProcessingCameraData(J)Lcom/motorola/camera/CameraData;
    .locals 5

    .line 1
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/CameraData;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    monitor-exit v1

    return-object v2

    :cond_1
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget p0, p0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    return-object p0
.end method

.method public static getProcessingPostView(J)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p0, p0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string p1, "THUMB_PATH"

    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "THUMB_WIDTH"

    invoke-virtual {p0, v0}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "THUMB_HEIGHT"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getInt(Ljava/lang/String;)I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/Util;->readFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Bitmap can`t be read. Thumbnail path: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SaveImageService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static hasDepth(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/McfAuxiliaryData;->DEPTHMAP:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static notifyFailedBgShot(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v1, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mPendingUriMediaData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_message"

    const-string v2, "Failed to create file"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "task_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Z)V

    new-instance v1, Lcom/motorola/camera/CameraData;

    iget-wide v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {p0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/motorola/camera/CameraData;-><init>(JLjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1, p1}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-boolean v2, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object v7, v3

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v5, "SEQ_ID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "DATE_TAKEN"

    iget-wide v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v3}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-static {v1, v8}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v3, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    :goto_2
    iget v3, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v1, v3}, Lkotlin/collections/ArraysUtilJVM;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v1

    new-instance v3, Lcom/motorola/camera/CameraData;

    iget-wide v5, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-wide v10, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v15

    iget v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    const/16 v17, 0x1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-object v4, v3

    move/from16 v16, v1

    move-object/from16 v18, v0

    invoke-direct/range {v4 .. v18}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIIILcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    invoke-static {v3, v2}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    return-void
.end method

.method public static removeImageProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Z)V
    .locals 3

    .line 7
    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 8
    new-instance v1, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p0, p1, v2}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V
    .locals 3

    invoke-static {p0}, Lcom/motorola/camera/saving/SaveImageService;->commitKpiRecord(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mSaveQueue:Lcom/motorola/camera/saving/SaveImageService$SaveQueue;

    new-instance v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v2, p0}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/saving/SaveImageService$SaveQueue;->offer(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0xe

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    instance-of v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz p0, :cond_0

    const-string p0, "auto_enhance"

    invoke-static {p0}, Lcom/motorola/camera/service/CameraForegroundServiceManager;->add(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static saveImageBeforeProcessing(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 8

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isPhotosProcessingSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    const-string v1, "SEQ_ID"

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "DATE_TAKEN"

    iget-wide v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v0}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v0, "PROCESSING_URI"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lcom/motorola/camera/CameraData;

    iget-wide v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;

    invoke-direct {v0, p0}, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    iget-object p0, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    new-instance v3, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v4, 0xd

    invoke-direct {v3, v4, v1, v0, p0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_1
    return-void
.end method

.method public static stripAppSegments([B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Lcom/motorola/camera/saving/XmpUtil;->stripAppSegments(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :cond_0
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v2, v0

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_2
    move-object v2, v0

    :goto_2
    invoke-static {v0}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return-object p0
.end method

.method public static writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z
    .locals 22

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v3, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v4, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    instance-of v5, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v5, v5, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const-string v9, "SaveImageService"

    if-eqz v5, :cond_1

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v11, 0x0

    :try_start_1
    sget v13, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v10, v11, v12, v13}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :catch_0
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {v10, v11, v12}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catch_1
    :cond_1
    :try_start_4
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-interface/range {p1 .. p1}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v11

    if-eqz v11, :cond_9

    move-object v11, v3

    check-cast v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v11, v11, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v12, v11, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v13, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v12, v13}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_1

    :cond_2
    iget v12, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    :goto_1
    iput v12, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mImageDataHolder:Lcom/motorola/camera/saving/ImageDataHolder;

    if-nez v2, :cond_3

    move v15, v7

    goto :goto_2

    :cond_3
    iget v13, v2, Lcom/motorola/camera/saving/ImageDataHolder;->mWidth:I

    move v15, v13

    :goto_2
    if-nez v2, :cond_4

    move v2, v7

    goto :goto_3

    :cond_4
    iget v2, v2, Lcom/motorola/camera/saving/ImageDataHolder;->mHeight:I

    :goto_3
    iput v15, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iput v2, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    iget-object v11, v11, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v14, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    const/16 v13, 0x2d

    if-lt v12, v13, :cond_8

    const/16 v13, 0x13b

    if-le v12, v13, :cond_5

    goto :goto_5

    :cond_5
    const/16 v8, 0x87

    if-ge v12, v8, :cond_6

    const/4 v8, 0x6

    :goto_4
    move/from16 v17, v8

    goto :goto_6

    :cond_6
    const/16 v8, 0xe1

    if-ge v12, v8, :cond_7

    const/4 v8, 0x3

    goto :goto_4

    :cond_7
    if-ge v12, v13, :cond_8

    const/16 v8, 0x8

    goto :goto_4

    :cond_8
    :goto_5
    move/from16 v17, v6

    :goto_6
    iget-object v8, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    move-object/from16 v13, p0

    move-object v12, v14

    move-object v14, v10

    move/from16 v19, v15

    move-object v15, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v8

    move/from16 v20, v2

    invoke-static/range {v13 .. v20}, Lcom/motorola/camera/saving/SaveImageService;->createDng(Ljava/nio/ByteBuffer;Ljava/io/FileOutputStream;Landroid/hardware/camera2/TotalCaptureResult;Landroid/location/Location;ILjava/lang/String;II)V

    goto :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/FileOutputStream;->write([B)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v4, :cond_a

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v13

    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v15

    move-object v11, v2

    move-object v12, v8

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v8, 0x0

    :goto_8
    move-object v1, v0

    move-object/from16 v21, v8

    move-object v8, v2

    goto/16 :goto_14

    :catch_3
    move-exception v0

    const/4 v8, 0x0

    :goto_9
    move-object/from16 v21, v8

    move-object v8, v2

    goto/16 :goto_11

    :cond_a
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_a
    if-eqz v5, :cond_c

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PENDING_MEDIA_URIS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {p1 .. p1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v11}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v11

    instance-of v12, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-eqz v12, :cond_b

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v3, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz v3, :cond_b

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_b
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    :goto_b
    iget-object v3, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    goto :goto_c

    :cond_c
    instance-of v3, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    if-eqz v3, :cond_d

    move-object v3, v1

    check-cast v3, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget v0, v0, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    iput v0, v3, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaOrientation:I

    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/motorola/camera/storage/MediaFile;->finish()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_c
    if-eqz v2, :cond_e

    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_d
    if-eqz v8, :cond_f

    :try_start_9
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_e
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return v6

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v8, 0x0

    goto :goto_f

    :catch_6
    move-exception v0

    const/4 v8, 0x0

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_f
    const/16 v21, 0x0

    goto :goto_14

    :catch_7
    move-exception v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_10
    const/16 v21, 0x0

    :goto_11
    :try_start_a
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "No space left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "writeToFile failed: Storage full"

    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_10
    if-eqz v8, :cond_11

    :try_start_b
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_12
    if-eqz v21, :cond_12

    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_13

    :catch_9
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_13
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return v7

    :catchall_4
    move-exception v0

    move-object v1, v0

    :goto_14
    if-eqz v8, :cond_13

    :try_start_d
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_15
    if-eqz v21, :cond_14

    :try_start_e
    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_16

    :catch_b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_16
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    throw v1
.end method


# virtual methods
.method public final addSaveRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V
    .locals 25

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-eqz v4, :cond_1

    return-void

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "SEQ_ID"

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v7, "ALTERNATE_SHOT"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "alternate_shot_index_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    if-eqz v6, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v8

    :goto_2
    const-string v6, "IS_PRIMARY"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eq v5, v6, :cond_5

    move v5, v8

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    const-string v6, "MCF"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, v2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v6, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v9, "task_id"

    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6
    check-cast v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-boolean v6, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    const/4 v9, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v10

    move-object v14, v10

    goto :goto_4

    :cond_7
    move-object v14, v9

    :goto_4
    iget-object v10, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v10}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v15

    if-eqz v6, :cond_8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, ".dng"

    invoke-virtual {v15, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "PROCESSING_URI"

    invoke-virtual {v4, v10, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-object v0, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-static {v0, v15}, Lcom/motorola/camera/storage/StorageUtils;->getMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v5}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v5, "SaveImageService"

    const-string v10, "notifyImageSaveComplete: unable to determine if current media file is the original one."

    invoke-static {v5, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    :goto_5
    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->isRawData()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    sget-object v5, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance v10, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v2}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eqz v0, :cond_b

    iget v0, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v0

    if-eqz v0, :cond_a

    move v7, v8

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v5}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v7

    iget-object v0, v5, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v2, "THUMB_PATH"

    invoke-virtual {v0, v2}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    new-instance v5, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2, v7, v8, v0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_b
    if-eqz v14, :cond_c

    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_c
    new-instance v0, Landroid/util/Size;

    iget v2, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    iget v5, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    invoke-direct {v0, v2, v5}, Landroid/util/Size;-><init>(II)V

    iget v2, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v0, v2}, Lkotlin/collections/ArraysUtilJVM;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/CameraData;

    iget-wide v12, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    iget-wide v7, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v21

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v22

    iget v0, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    const/16 v24, 0x0

    move-object v11, v2

    move-wide/from16 v17, v7

    move/from16 v23, v0

    invoke-direct/range {v11 .. v24}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    iget-object v0, v2, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    invoke-virtual {v0, v4}, Landroidx/work/impl/StartStopTokens;->putAll(Landroid/os/Bundle;)V

    invoke-static {v2, v6}, Lcom/motorola/camera/saving/SaveImageService;->notifySaveComplete(Lcom/motorola/camera/CameraData;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v1}, Lcom/motorola/camera/saving/FileName;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_CAPTURE_THUMB.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_d
    return-void
.end method

.method public final removeImageProcessing(Lcom/motorola/camera/CameraData;Z)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getSequenceId()Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/storage/MediaStoreClient;->deleteMediaItem(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete in MediaStore: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SaveImageService"

    invoke-static {v0, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getTaskID()Lcom/motorola/camera/background/common/TaskId;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v0

    .line 4
    iget-object p0, p1, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string p1, "THUMB_PATH"

    invoke-virtual {p0, p1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    .line 6
    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/saving/SaveImageService;JLjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/saving/SaveImageService;->addSaveRunnable(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final writeJpeg(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-virtual {v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExtraOutput:Landroid/net/Uri;

    const-string v0, "ImageLength"

    const-string v7, "ImageWidth"

    iget-object v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v8, v8, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v9, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v10, "DOCUMENT_POINTS"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    iget-object v14, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v15, "DOCUMENT_WIDTH"

    invoke-virtual {v14, v15, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    new-array v10, v15, [B

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v10, v13, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v15

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    new-array v15, v12, [I

    const/16 v12, 0x8

    new-array v13, v12, [I

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    int-to-float v14, v14

    div-float/2addr v12, v14

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v14, v11, :cond_0

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    float-to-int v11, v11

    aput v11, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    const/16 v21, 0x0

    move-object/from16 v19, v13

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v21}, Lcom/motorola/camera/mcf/DocUtil;->cropRgb([BII[I[IZ)[B

    move-result-object v9

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v10, 0x1

    aget v11, v15, v10

    const/4 v10, 0x2

    aget v10, v15, v10

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v10, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v12

    invoke-virtual {v10, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    :try_start_0
    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    new-instance v12, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v12, v7}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v6

    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    iget v6, v8, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mOrientation:I

    invoke-virtual {v12, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    invoke-virtual {v12, v7, v14}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v0, v15}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/motorola/camera/utility/AndroidImageUtils;->createDocThumbnail([B)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setThumbnailBytes([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    :goto_1
    const-string v7, ";"

    const/16 v8, 0x8

    if-ge v6, v8, :cond_1

    :try_start_2
    aget v11, v13, v6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v6, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v12, v0, v6}, Lcom/motorola/camera/photometadata/PhotoMetadata;->setMakernoteAttribute(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;[B)V

    invoke-virtual {v12}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray()[B

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    :goto_2
    :try_start_3
    const-string v6, "SaveImageService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process failed to write exif of document: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    new-instance v6, Lcom/motorola/camera/saving/XmpData;

    invoke-direct {v6}, Lcom/motorola/camera/saving/XmpData;-><init>()V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->stripAppSegments([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/MotUtil;->Base64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v7, "http://ns.google.com/photos/1.0/document/"

    iget-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_2

    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_2
    iget-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    if-nez v8, :cond_3

    sget-object v8, Lcom/adobe/xmp/XMPMetaFactory;->schema:Landroidx/work/WorkQuery;

    new-instance v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v8}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    iput-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :cond_3
    iget-object v8, v6, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    iget-object v9, v6, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    :try_start_4
    const-string v11, "Data"

    check-cast v9, Lcom/adobe/xmp/impl/XMPMetaImpl;

    const/4 v12, 0x0

    invoke-virtual {v9, v7, v11, v0, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    const-string v0, "Mime"

    const-string v9, "image/jpeg"

    check-cast v8, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v8, v7, v0, v9, v12}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_4
    .catch Lcom/adobe/xmp/XMPException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v7, "XmpData"

    const-string v8, "can\'t embed document data"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    new-instance v0, Landroidx/work/WorkQuery;

    sget-object v7, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    iget-object v7, v7, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mType:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8, v8, v8}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v6, v0}, Lcom/motorola/camera/saving/XmpData;->add(Landroidx/work/WorkQuery;)V

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Ljava/nio/ByteBuffer;Lcom/motorola/camera/saving/XmpData;)Ljava/nio/ByteBuffer;

    move-result-object v12

    goto :goto_6

    :goto_5
    invoke-static {v9}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    move-object/from16 v16, v6

    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_5

    invoke-virtual {v3, v12}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    move-object v5, v12

    :cond_5
    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/motorola/camera/saving/SaveImageService;->mProcessingHandler:Landroid/os/Handler;

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    if-eqz v16, :cond_7

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v5, v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    goto/16 :goto_1b

    :cond_7
    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_SAVE_OUTPUT_BY_ENGINE"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    :cond_8
    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v5, 0x0

    :try_start_5
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    iget v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    sget-object v7, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/16 v7, 0x9

    if-ne v3, v7, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-eqz v3, :cond_c

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v12, 0x0

    invoke-static {v9, v12, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eq v10, v8, :cond_b

    if-ne v10, v7, :cond_a

    goto :goto_8

    :cond_a
    filled-new-array {v9, v3}, [I

    move-result-object v3

    goto :goto_9

    :cond_b
    :goto_8
    filled-new-array {v3, v9}, [I

    move-result-object v3

    :goto_9
    const/4 v7, 0x0

    aget v8, v3, v7

    iput v8, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const/4 v7, 0x1

    aget v3, v3, v7

    iput v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :try_start_6
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v5, v6, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    const/4 v5, 0x0

    goto :goto_c

    :cond_c
    iget-object v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v5, "PANO_IMAGE_WIDTH"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "PANO_IMAGE_HEIGHT"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eq v6, v8, :cond_e

    if-ne v6, v7, :cond_d

    goto :goto_a

    :cond_d
    filled-new-array {v3, v5}, [I

    move-result-object v3

    goto :goto_b

    :cond_e
    :goto_a
    filled-new-array {v5, v3}, [I

    move-result-object v3

    :goto_b
    const/4 v5, 0x0

    aget v6, v3, v5

    iput v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mWidth:I

    const/4 v6, 0x1

    aget v3, v3, v6

    iput v3, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mHeight:I

    :goto_c
    iget v3, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentModeSupportP3(I)Z

    move-result v3

    iget-object v6, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v6, v6, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    invoke-static {v0, v6, v5, v3}, Lcom/motorola/camera/saving/SaveImageService;->correctExifInfo(Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;ZZ)V

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v0}, Lcom/motorola/camera/storage/MediaFile;->finish()V

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    goto/16 :goto_1b

    :cond_f
    const/4 v12, 0x0

    if-nez v5, :cond_10

    const-string v0, "SaveImageService"

    const-string v1, "Jpeg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    if-nez v0, :cond_11

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v10, 0x1

    :goto_e
    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    const/high16 v6, 0x10000000

    if-eqz v0, :cond_15

    if-eqz v10, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {v2, v5}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v0, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    sget v11, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    :try_start_7
    sget-object v11, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    monitor-enter v11
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    iget-object v13, v11, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    if-nez v13, :cond_13

    new-instance v13, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    sget-object v14, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-direct {v13, v14}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;-><init>(Lcom/motorola/camera/CameraApp;)V

    iput-object v13, v11, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    :cond_13
    iget-object v13, v11, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mPhotosProviderCaller:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v11

    invoke-static {v13, v0, v5}, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->applyEnhance(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Lcom/motorola/camera/saving/FileName;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_f

    :catchall_1
    move-exception v0

    monitor-exit v11

    throw v0
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    const-string v11, "AutoEnhanceManager"

    const-string v13, "autoEnhance: "

    invoke-static {v11, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v12

    :goto_f
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v11}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v11

    sget-object v13, Lcom/motorola/camera/CameraKpi$KPI;->AUTO_ENHANCE_PROCESSING_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    monitor-enter v11

    :try_start_a
    invoke-virtual {v11, v13, v7, v7, v8}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v11

    sget-object v7, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v8, v8, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v13, v7, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v13

    :try_start_b
    iget-object v7, v7, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    iget-object v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    if-nez v0, :cond_14

    const-string v0, "SaveImageService"

    const-string v7, "Auto Enhance failed, saving original jpeg"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v7, 0x1

    goto :goto_10

    :cond_14
    const/4 v7, 0x1

    iput-boolean v7, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mIsEnhanced:Z

    move-object v5, v0

    const/4 v0, 0x3

    :goto_10
    iget-object v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v11, "ANALYTICS_AUTO_ENHANCE_STATE"

    invoke-virtual {v8, v11, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11

    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit v11

    throw v1

    :cond_15
    const/4 v7, 0x1

    move-object v9, v12

    :goto_11
    invoke-static {v2, v5}, Lcom/motorola/camera/saving/SaveImageService;->embedXmpData(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    array-length v8, v8

    iput v8, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mDataSize:I

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mMotionVideo:Ljava/io/File;

    if-nez v5, :cond_16

    move v5, v7

    goto :goto_12

    :cond_16
    const/4 v5, 0x0

    :goto_12
    iget-object v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v8, :cond_18

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->getInstanceTypeClass()Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v8

    if-eqz v5, :cond_18

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v8, v5, :cond_17

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$InstanceType;->SF_DEPTH:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eq v8, v5, :cond_17

    move v5, v7

    goto :goto_13

    :cond_17
    const/4 v5, 0x0

    :cond_18
    :goto_13
    iget-object v8, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    if-eqz v8, :cond_19

    sget-object v11, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v8, v11}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v8, :cond_19

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v8

    if-eqz v8, :cond_19

    move v8, v7

    goto :goto_14

    :cond_19
    const/4 v8, 0x0

    :goto_14
    if-eqz v8, :cond_1b

    if-eqz v5, :cond_1b

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v8, Lcom/motorola/camera/mcf/McfAuxiliaryData;->BINDATA:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v5, v8}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/mcf/McfAuxBinData;

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->isAppXData()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getAppXId()I

    move-result v8

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimaryLength()I

    move-result v11

    if-lez v11, :cond_1b

    :try_start_d
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v15

    array-length v15, v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfAuxBinData;->getPrimary()[B

    move-result-object v5

    invoke-static {v8, v5, v11, v13}, Lcom/motorola/camera/saving/XmpUtil;->addAppXSegments(I[BLjava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_1a
    invoke-static {v11}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_17

    :catchall_4
    move-exception v0

    move-object v10, v11

    move-object v12, v13

    goto :goto_15

    :catch_6
    move-object v12, v13

    goto :goto_16

    :catchall_5
    move-exception v0

    move-object v10, v11

    goto :goto_15

    :catchall_6
    move-exception v0

    move-object v10, v12

    :goto_15
    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_7
    move-object v11, v12

    :catch_8
    :goto_16
    invoke-static {v11}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v13, v12

    :goto_17
    invoke-static {v13}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :cond_1b
    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v8}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v11

    if-eqz v11, :cond_20

    iget-object v3, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isBestShot()Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isComposition()Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiLLS()Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiIST()Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->isAiCUD()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_18

    :cond_1c
    const/4 v7, 0x0

    :cond_1d
    :goto_18
    check-cast v11, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-boolean v3, v11, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    if-nez v3, :cond_1f

    if-eqz v7, :cond_1e

    goto :goto_19

    :cond_1e
    const-string v3, "fileName"

    invoke-static {v5, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v11, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    iput-object v3, v11, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-static {v8}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v8

    iput-object v8, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto :goto_1a

    :cond_1f
    :goto_19
    iget-object v3, v11, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v8

    :cond_20
    :goto_1a
    iget-boolean v3, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v3, :cond_22

    if-eqz v9, :cond_22

    sget-object v3, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_AUTO_ENHANCE_KEEP_FILE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v10, :cond_22

    new-instance v3, Lcom/motorola/camera/saving/FileName;

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-direct {v3, v5}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    invoke-virtual {v3, v6}, Lcom/motorola/camera/saving/FileName;->removeAttribute(I)Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    const-string v6, "_BURST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, v2, Lcom/motorola/camera/saving/SaveImageService$ImageContainer;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    iget-object v5, v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "alternate_shot_index_"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/motorola/camera/BurstShotFileUtils;->generateBurstSuffix(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/motorola/camera/saving/FileName;->suffix(Ljava/lang/String;)Lcom/motorola/camera/saving/FileName;

    :cond_21
    move-object v5, v8

    check-cast v5, Lcom/motorola/camera/storage/SharedMediaFile;

    invoke-virtual {v3}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v5, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-object v5, v5, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v5, v3}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->createMediaFileWithFallback(Lcom/motorola/camera/storage/MediaFile;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v3

    invoke-static {v9, v3, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    :cond_22
    invoke-static {v0, v8, v2}, Lcom/motorola/camera/saving/SaveImageService;->writeToFile(Ljava/nio/ByteBuffer;Lcom/motorola/camera/storage/MediaFile;Lcom/motorola/camera/saving/SaveImageService$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1, v2, v8}, Lcom/motorola/camera/saving/SaveImageService;->notifyImageSaveComplete(Lcom/motorola/camera/saving/SaveImageService$ImageContainer;Lcom/motorola/camera/storage/MediaFile;)V

    :cond_23
    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v0, :cond_24

    const-string v0, "auto_enhance"

    invoke-static {v0}, Lcom/motorola/camera/service/CameraForegroundServiceManager;->remove(Ljava/lang/String;)V

    :cond_24
    :goto_1b
    return-void
.end method
